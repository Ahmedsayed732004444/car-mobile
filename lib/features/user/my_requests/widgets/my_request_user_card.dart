import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:car_mediator_mobile/core/utils/size_config.dart';
import 'package:car_mediator_mobile/widgets/components.dart';

import 'package:car_mediator_mobile/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/date_parser_utils.dart';
import '../../../../core/utils/utils.dart';
import '../../../../models/request_model.dart';
import '../../../../widgets/request_status_widget.dart';
import '../screens/details_my_request_screen.dart';
import '../screens/responses_my_request_screen.dart';


class MyRequestUserCard extends StatelessWidget {
  const MyRequestUserCard({super.key, required this.model});
  final RequestModel model;

  @override
  Widget build(BuildContext context) {
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
                    flex: 1,
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
                Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: RequestStatusWidget(
                        status: model.requestStatus,
                      ),
                    )),
              ],
            ),
            const Divider(
              color: AppColor.grey200,
            ),
            _BuildRequestCardItem(
              icon: Icons.category,
              label: 'القسم :',
              value: model.catNameAr,
            ),
            const SizedBox(
              height: 5,
            ),
            _BuildRequestCardItem(
              icon: Icons.location_on,
              label: 'مدينة الطلب :',
              value: model.cityCustomerNameAr,
            ),
            const SizedBox(
              height: 5,
            ),
            _BuildRequestCardItem(
              icon: Icons.date_range,
              label: 'تاريخ الطلب :',
              value:DateParserUtils.timeAgoFormat(model.requestDate),
            ),
            const SizedBox(
              height: 5,
            ),
            _BuildRequestCardItem(
              icon: Icons.reply,
              label: 'عدد الردود :',
              value: model.countResponse.toString(),
            ),

            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(flex:1, child: CustomButton(
                  label: 'إستعراض الردود',
                  txtSize: SizeConfig.widthResponsive(0.04),
                  onTap: () {
                    navigationPush(context, ResponsesMyRequestScreen(requestId: model.requestId,));
                  },
                )),
                const SizedBox(width: 10,),
                Expanded(flex:1, child: CustomButton(
                  label: 'تفاصيل الطلب',
                  txtSize: SizeConfig.widthResponsive(0.04),
                  primaryColor: Colors.transparent,
                  textColor: AppColor.primaryColor,
                  borderColor: AppColor.primaryColor,
                  bgOverlayColor: AppColor.primaryColor.withOpacity(0.08),
                  onTap: () {
                    navigationPush(context, DetailsMyRequestScreen(requestId: model.requestId,));
                  },
                )),
              ],
            ),
            const SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }
}

class _BuildRequestCardItem extends StatelessWidget {
  const _BuildRequestCardItem(
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
