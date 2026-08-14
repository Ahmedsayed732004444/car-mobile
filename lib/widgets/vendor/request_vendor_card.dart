
import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:car_mediator_mobile/core/utils/constants/assets_path.dart';
import 'package:car_mediator_mobile/core/utils/size_config.dart';
import 'package:car_mediator_mobile/features/vendor/new_requests/screens/details_new_request_screen.dart';
import 'package:car_mediator_mobile/widgets/components.dart';
import 'package:car_mediator_mobile/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../core/utils/constants/colors_constants.dart';
import '../../core/utils/date_parser_utils.dart';
import '../../core/utils/utils.dart';
import '../../models/request_eligible_vendor_model.dart';

class RequestVendorCard extends StatelessWidget {
  const RequestVendorCard({super.key, required this.model});
  final RequestEligibleVendorModel model;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      elevation: 1,
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(flex:1, child: Align(
                alignment: Alignment.centerRight,
                child: Text('رقم الطلب :  ${Utils.numberFormatting(model.requestId)}', style: txtMedium04,),
              )),
             const SizedBox(width: 5,),
              Expanded(flex:1, child: Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.date_range, color: AppColor.grey350, size: 20,),
                    const SizedBox(width: 5,),
                    Text(DateParserUtils.getDateWithTimeFromString(model.requestDate), style: txtMedium04,),
                  ],
                ),
              )),
            ],
          ),
          const Divider(color: AppColor.grey200,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.category, color: AppColor.grey350, size: 18,),
              const SizedBox(width: 5,),
              Text('القسم :', style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), color: AppColor.greyColor, fontWeight: FontWeight.w500),),
              const SizedBox(width: 5,),
              Text(model.catNameAr, style: txtMedium04 ,),
            ],
          ),
          const SizedBox(height: 5,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.location_on, color: AppColor.grey350, size: 18,),
              const SizedBox(width: 5,),
              Text('مدينة الطلب :', style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), color: AppColor.greyColor, fontWeight: FontWeight.w500),),
              const SizedBox(width: 5,),
              Text(model.cityCustomerNameAr, style: txtMedium04,),
            ],
          ),
          const SizedBox(height: 8,),
          Text(model.description, style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), color: AppColor.greyColor, fontWeight: FontWeight.w400), overflow: TextOverflow.ellipsis, maxLines: 2,),

          const SizedBox(height: 8,),
          CustomButton(
              label: 'تفاصيل الطلب',
              txtSize: SizeConfig.widthResponsive(0.04),
              primaryColor: Colors.transparent,
              textColor: AppColor.primaryColor,
              borderColor: AppColor.primaryColor,
              bgOverlayColor: AppColor.primaryColor.withOpacity(0.08),
              onTap: (){
                navigationPush(context, DetailsNewRequestScreen(requestId: model.requestId,));
              },
          )
        ],
      ),),
    );
  }
}
