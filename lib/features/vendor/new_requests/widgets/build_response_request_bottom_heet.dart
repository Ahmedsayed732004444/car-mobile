import 'dart:io';

import 'package:car_mediator_mobile/core/helpers/toast_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/helpers/helpers.dart';
import '../../../../core/providers/vendors/new_request_vendor_provider.dart';
import '../../../../core/utils/connection_utils.dart';
import '../../../../core/utils/constants/assets_path.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/constants/enumeration.dart';
import '../../../../core/utils/dialogUtils.dart';
import '../../../../core/utils/form_validator.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_textfield.dart';
import '../../../../widgets/icon_comp.dart';
import 'availability_request_card_selector_widget.dart';

class BuildResponseRequestBottomSheet extends StatefulWidget {
  const BuildResponseRequestBottomSheet({super.key,});

  @override
  State<BuildResponseRequestBottomSheet> createState() =>
      _BuildResponseRequestBottomSheetState();
}

class _BuildResponseRequestBottomSheetState
    extends State<BuildResponseRequestBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  final priceController = TextEditingController();
  final notesController = TextEditingController();
  final warrantyController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    priceController.dispose();
    notesController.dispose();
    warrantyController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Consumer<NewRequestVendorProvider>(
          builder: (context, provider, child) {
        return Form(
              key: _formKey,
            child: ListView(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.close,
                    color: AppColor.primaryColor,
                  )),
            ),
            SizedBox(
              height: SizeConfig.heightResponsive(0.02),
            ),
            AvailabilityRequestCardSelectorWidget(
              onChanged: (ResponseRequestAvailabilityEnum availability) {
                provider.changeResponseRequestAvailability(availability);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                IconComponent(
                  icon: Image.asset(
                    AssetsPath.icon_riyal,
                    color: AppColor.primaryColor,
                    height: 24,
                    width: 24,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CustomTextField(
                    label: 'السعر',
                    hint: 'السعر',
                    controller: priceController,
                    validator: (value) => FormValidatorUtils.numberValidator(
                        value,
                        isRequired: true),
                    fillColor: AppColor.secondaryColor,
                    filled: true,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                IconComponent(
                  icon: Icon(
                    Icons.assignment,
                    color: AppColor.primaryColor,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CustomTextField(
                    label: 'ملاحظات',
                    hint: ' مثلا ملاحظات عن الإختلاف إذا وجد ...',
                    controller: notesController,
                    validator: (value) => FormValidatorUtils.textValidator(
                        value,
                        isRequired: (provider.responseRequestAvailability ==
                            ResponseRequestAvailabilityEnum.available)
                            ? false
                            : true),
                    fillColor: AppColor.secondaryColor,
                    filled: true,
                    maxLines: 4,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                IconComponent(
                  icon: Icon(
                    Icons.security,
                    color: AppColor.primaryColor,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CustomTextField(
                    label: 'مدة الضمان (إختياري)',
                    hint: 'مثلاً ضمان 6 أشهر',
                    controller: warrantyController,
                    validator: (value) => FormValidatorUtils.textValidator(value, isRequired: false),
                    fillColor: AppColor.secondaryColor,
                    filled: true,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            _MultipleImageResponsePickerWidget(),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              label: 'إرسال الرد',
              txtSize: SizeConfig.widthResponsive(0.04),
               loading: provider.isLoading,
              onTap: () async {

                  await _sendResponse(provider);
              },
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ));
      }),
    );
  }

  Future<void> _sendResponse(NewRequestVendorProvider provider) async {
    Helper.dismissKeyBoard();

    bool myValid = _formKey.currentState!.validate();
    if (myValid) {

      if(! await ConnectionUtils.hasInternetConnection()){
        DialogUtils().showNoInternetDialog(context);
        return;
      }

      await provider.sendResponseRequest(context, body: {
        'requestId': provider.detailsNewRequestsModel?.requestId.toString() ?? '',
        'price': priceController.text,
        'notes': notesController.text,
        'warranty': warrantyController.text,
        'responseRequestAvailability': provider.responseRequestAvailability.name
      });
    }
  }
}

class _MultipleImageResponsePickerWidget extends StatelessWidget {
  const _MultipleImageResponsePickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      children: [
        CustomButton(
          label: 'إرفاق صور (إختياري)',
          txtSize: SizeConfig.widthResponsive(0.04),
          primaryColor: Colors.white,
          textColor: AppColor.primaryColor,
          borderColor: AppColor.primaryColor,
          bgOverlayColor: AppColor.primaryColor.withOpacity(0.2),
          onTap: () async {
            context.read<NewRequestVendorProvider>().pickImages();
          },
        ),
        Consumer<NewRequestVendorProvider>(
          builder: (context, provider, child) {
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // عدد الأعمدة
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: provider.filesList.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.file(
                        File(provider.filesList[index].path),
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: Container(
                        height: 30,
                        width: 30,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: IconButton(onPressed: (){
                          provider.removeImage(index);
                        }, icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 18,
                        )),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
