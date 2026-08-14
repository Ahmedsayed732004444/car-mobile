import 'package:car_mediator_mobile/core/providers/common_provider.dart';
import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/providers/users/responses_my_request_provider.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/constants/enumeration.dart';
import '../../../../core/utils/date_parser_utils.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/utils/utils.dart';
import '../../../../models/response_request_model.dart';
import '../../../../widgets/components.dart';
import '../../../../widgets/container_fields_widget.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_loading.dart';
import '../../../../widgets/item_table_widget.dart';
import '../../../../widgets/shared/complaint_vendor_service_widget.dart';
import '../widgets/build_vendor_details_response_widget.dart';

class DetailsResponseMyRequestScreen extends StatefulWidget {
  const DetailsResponseMyRequestScreen({super.key, required this.responseId});
  final int responseId;

  @override
  _DetailsResponseMyRequestScreenState createState() =>
      _DetailsResponseMyRequestScreenState();
}

class _DetailsResponseMyRequestScreenState
    extends State<DetailsResponseMyRequestScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final provider =
          Provider.of<ResponsesMyRequestProvider>(context, listen: false);
      await provider.getResponseRequestById(responseId: widget.responseId);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'تفاصيل الرد' + ' ${Utils.numberFormatting(widget.responseId)}',
          style: txtMedium05,
        ),
        leading: ArrowBackWidget(myContext: context),
        centerTitle: true,
        elevation: 0,
      ),
      body: Consumer<ResponsesMyRequestProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            return const CustomLoading();
          }

          return RefreshIndicator(
            onRefresh: () {
              return provider.getResponseRequestById(
                  responseId: widget.responseId);
            },
            child: ListView(
              padding: const EdgeInsets.all(12),
              shrinkWrap: true,
              children: [
                BuildVendorDetailsResponseWidget(
                  model: provider.detailsResponseRequestModel,
                    responseId: widget.responseId,
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                // BuildRequestDetailsResponseWidget(
                //   model: provider.detailsResponseRequestModel,
                // ),
                const SizedBox(
                  height: 20,
                ),
                _BuildResponseDetailsVendorWidget(
                  model: provider.detailsResponseRequestModel,
                ),
                SizedBox(
                  height: SizeConfig.heightResponsive(0.05),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomButton(
                  label: 'إبلاغ عن إساءة',
                  onTap: () async {
                    customBottomSheet(context,
                        child: ComplaintVendorServiceWidget(
                          requestId:
                          provider.detailsResponseRequestModel?.requestId ??
                              0,
                          responseId: widget.responseId,
                        ),
                        isDismissible: false);
                  },
                  txtSize: SizeConfig.widthResponsive(0.04),
                  primaryColor: Colors.transparent,
                  borderColor: Colors.red,
                  textColor: Colors.red,
                  bgOverlayColor: AppColor.primaryColor.withOpacity(0.2),
                  icon: const Icon(Icons.flag, color: Colors.red),
                ),),
              ],
            ),
          );
        },
      ),

      // bottomNavigationBar: BottomAppBar(
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(
      //       horizontal: 0,
      //     ),
      //     child: CustomButton(
      //       label: 'الرد على الطلب',
      //       txtSize: SizeConfig.widthResponsive(0.04),
      //       onTap: (){
      //         customBottomSheet(context,
      //             child: const BuildResponseRequestBottomSheet(),
      //             isDismissible: false);
      //       },
      //     ),
      //   ),
      // ),
    );
  }
}

class _BuildResponseDetailsVendorWidget extends StatelessWidget {
  const _BuildResponseDetailsVendorWidget({super.key, required this.model});
  final ResponseRequestModel? model;

  @override
  Widget build(BuildContext context) {
    return ContainerFieldsWidget(title: 'تفاصيل رد الشركة', children: [
      ItemTableWidget(
        keyString: 'رقم الرد',
        value: Utils.numberFormatting(model?.responseId ?? 0),
      ),
      ItemTableWidget(
        keyString: 'تاريخ الرد',
        value: DateParserUtils.timeAgoFormat(model?.responseDate),
      ),
      ItemTableWidget(
        keyString: 'حالة الرد',
        value: (model?.responseStatus ?? '') ==
                ResponseRequestAvailabilityEnum.available.name
            ? 'متوفر'
            : (model?.responseStatus ?? '') ==
                    ResponseRequestAvailabilityEnum
                        .available_with_difference.name
                ? 'متوفر مع إختلاف'
                : 'لم يتم الرد',
      ),
      ItemTableWidget(
        keyString: 'السعر',
        value: '${model?.priceResponse ?? 0}  ر.س',
      ),
      ItemTableWidget(
        keyString: 'مدة الضمان',
        value: model?.warrantyResponse ?? 'لا يوجد',
      ),
      ItemTableWidget(
        keyString: 'ملاحظات الرد',
        value: model?.noteResponse ?? '',
      ),
      const SizedBox(
        height: 10,
      ),
    ]);
  }
}
