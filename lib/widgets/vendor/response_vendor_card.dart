import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:car_mediator_mobile/core/utils/size_config.dart';
import 'package:car_mediator_mobile/features/vendor/new_requests/screens/details_new_request_screen.dart';
import 'package:car_mediator_mobile/widgets/components.dart';
import 'package:car_mediator_mobile/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../core/utils/constants/colors_constants.dart';
import '../../core/utils/constants/enumeration.dart';
import '../../core/utils/date_parser_utils.dart';
import '../../core/utils/utils.dart';
import '../../features/vendor/responses/screens/details_response_request_screen.dart';
import '../../models/response_request_model.dart';
import '../request_status_widget.dart';

import 'package:provider/provider.dart';
import '../../core/providers/conversation_provider.dart';

class ResponseVendorCard extends StatelessWidget {
  const ResponseVendorCard({super.key, required this.model});
  final ResponseRequestModel model;

  String _getFieldValue(List<String> keywords) {
    try {
      final field = model.fields.firstWhere((element) {
        final keyStr = element['key'].toString().toLowerCase();
        return keywords.any((k) => keyStr.contains(k.toLowerCase()));
      });
      return field['value'].toString();
    } catch (e) {
      return 'غير محدد';
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isSpareParts = model.catNameAr.contains('قطع غيار');
    final bool isUsedCars = model.catNameAr.contains('مستعمل');

    Widget customField1;
    Widget customField2;

    if (isSpareParts) {
      String carName = _getFieldValue(['سيار', 'car']);
      if (carName == 'غير محدد' && model.brandsNames.isNotEmpty) {
        carName = model.brandsNames.join(' , ');
      }
      customField1 = _BuildResponseCardItem(
        icon: Icons.settings,
        label: 'اسم القطعة :',
        value: _getFieldValue(['القطعة', 'قطع', 'part']),
      );
      customField2 = _BuildResponseCardItem(
        icon: Icons.directions_car,
        label: 'اسم السيارة :',
        value: carName,
      );
    } else if (isUsedCars) {
      customField1 = _BuildResponseCardItem(
        icon: Icons.attach_money,
        label: 'الميزانية :',
        value: _getFieldValue(['ميزاني', 'budget']),
      );
      customField2 = _BuildResponseCardItem(
        icon: Icons.description,
        label: 'تفاصيل الطلب :',
        value: model.description.isNotEmpty ? model.description : 'غير محدد',
      );
    } else {
      customField1 = _BuildResponseCardItem(
        icon: Icons.date_range,
        label: 'تاريخ الطلب :',
        value: DateParserUtils.getDateWithTimeFromString(model.requestDate),
      );
      customField2 = _BuildResponseCardItem(
        icon: Icons.date_range,
        label: 'تاريخ الرد :',
        value: DateParserUtils.getDateWithTimeFromString(model.responseDate),
      );
    }

    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'رقم الطلب :  ${Utils.numberFormatting(model.requestId)}',
                        style: txtMedium04,
                      ),
                    )),
                const SizedBox(
                  width: 5,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        context.read<ConversationProvider>().createConversation(
                          context,
                          body: {
                            'requestId': model.requestId,
                            'responseId': model.responseId,
                            'vendorId': model.vendorId,
                          },
                          requestId: model.requestId,
                          responseId: model.responseId,
                          vendorId: model.vendorId,
                          receiverName: model.userName.isNotEmpty ? model.userName : 'العميل',
                          receiverLogo: model.userLogo,
                          isVendor: true,
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppColor.primaryColor.withOpacity(0.08),
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: AppColor.primaryColor.withOpacity(0.3)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.chat_bubble_outline,
                              size: 14,
                              color: AppColor.primaryColor,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'الدردشة',
                              style: TextStyle(
                                fontSize: SizeConfig.widthResponsive(0.032),
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    RequestStatusWidget(
                      status: model.requestStatus,
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              color: AppColor.grey200,
            ),
            _BuildResponseCardItem(
              icon: Icons.category,
              label: 'القسم :',
              value: model.catNameAr,
            ),
            const SizedBox(
              height: 5,
            ),
            _BuildResponseCardItem(
              icon: Icons.location_on,
              label: 'مدينة الطلب :',
              value: model.cityCustomerNameAr,
            ),
            const SizedBox(
              height: 5,
            ),
            customField1,
            const SizedBox(
              height: 5,
            ),
            customField2,
            const SizedBox(
              height: 5,
            ),
            _BuildResponseCardItem(
              icon: Icons.reply,
              label: 'حالة الرد :',
              value: model.responseStatus ==
                      ResponseRequestAvailabilityEnum.available.name
                  ? 'متوفر'
                  : model.responseStatus ==
                          ResponseRequestAvailabilityEnum
                              .available_with_difference.name
                      ? 'متوفر مع إختلاف'
                      : 'لم يتم الرد',
              textColor: Colors.green,
            ),
            const SizedBox(
              height: 8,
            ),
            if (!isUsedCars)
              Text(
                model.description,
                style: TextStyle(
                    fontSize: SizeConfig.widthResponsive(0.04),
                    color: AppColor.greyColor,
                    fontWeight: FontWeight.w400),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            if (!isUsedCars)
              const SizedBox(
                height: 8,
              ),
            CustomButton(
              label: 'تفاصيل الرد',
              txtSize: SizeConfig.widthResponsive(0.04),
              primaryColor: Colors.transparent,
              textColor: AppColor.primaryColor,
              borderColor: AppColor.primaryColor,
              bgOverlayColor: AppColor.primaryColor.withOpacity(0.08),
              onTap: () {
                navigationPush(
                    context,
                    DetailsResponseRequestScreen(
                      responseId: model.responseId,
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}

class _BuildResponseCardItem extends StatelessWidget {
  const _BuildResponseCardItem(
      {super.key,
      required this.icon,
      required this.label,
      required this.value,
        this.textColor = AppColor.primaryColor});
  final IconData icon;
  final String label;
  final String value;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: AppColor.grey350,
          size: 18,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          label,
          style: TextStyle(
              fontSize: SizeConfig.widthResponsive(0.04),
              color: AppColor.greyColor,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          value,
          style: TextStyle(
            color: textColor,fontSize: SizeConfig.widthResponsive(0.04),fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
