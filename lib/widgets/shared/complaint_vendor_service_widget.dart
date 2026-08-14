
import 'package:car_mediator_mobile/core/providers/common_provider.dart';
import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/helpers/helpers.dart';
import '../../core/utils/connection_utils.dart';
import '../../core/utils/constants/colors_constants.dart';
import '../../core/utils/dialogUtils.dart';
import '../../core/utils/form_validator.dart';
import '../../core/utils/size_config.dart';
import '../custom_button.dart';
import '../custom_textfield.dart';

class ComplaintVendorServiceWidget extends StatefulWidget {
  const ComplaintVendorServiceWidget({super.key, required this.requestId, required this.responseId});
  final int requestId;
  final int responseId;

  @override
  State<ComplaintVendorServiceWidget> createState() =>
      _ComplaintVendorServiceWidgetState();
}

class _ComplaintVendorServiceWidgetState
    extends State<ComplaintVendorServiceWidget> {

  final _formKey = GlobalKey<FormState>();
  final descriptionController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    descriptionController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final _prov = Provider.of<CommonProvider>(context);
    return Container(
      width: SizeConfig.width,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
      ),
      child: Form(
        key: _formKey,
        child: ListView(
          shrinkWrap: true,
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
              height: 10,
            ),
            Text('إبلاغ عن إساءة',textAlign: TextAlign.center, style: TextStyle(color: Colors.red, fontSize: SizeConfig.widthResponsive(0.04), fontWeight: FontWeight.w600),),
            SizedBox(
              height: SizeConfig.heightResponsive(0.03),
            ),
            CustomTextField(
              label: 'البلاغ',
              hint: 'إكتب وتفاصيل البلاغ...',
              maxLines: 6,
              controller: descriptionController,
              validator: (value) => FormValidatorUtils.textValidator(value,
                  isRequired: true, minLength: 50, maxLength: 2000),
              maxLength: 2000,
            ),
            SizedBox(
              height: SizeConfig.heightResponsive(0.02),
            ),
            CustomButton(
              label: 'إرسال البلاغ',
              txtSize: SizeConfig.widthResponsive(0.04),
              loading: _prov.isLoading,
              onTap: () async {
                Helper.dismissKeyBoard();
                bool myValid = _formKey.currentState!.validate();
                if (myValid) {
                  if (!await ConnectionUtils.hasInternetConnection()) {
                    DialogUtils().showNoInternetDialog(context);
                    return;
                  }
                  await _prov.complaintVendorService(context,body: {
                    'requestId' : widget.requestId,
                    'responseId' : widget.responseId,
                    'description' : descriptionController.text.toString(),
                  });
                }
              },
            ),
            SizedBox(
              height: SizeConfig.heightResponsive(0.04),
            ),
          ],
        ),
      ),
    );
  }
}