
import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:car_mediator_mobile/features/vendor/specialties/screens/vendor_brand_car_screen.dart';
import 'package:car_mediator_mobile/features/vendor/specialties/screens/vendor_cities_screen.dart';
import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../widgets/components.dart';
import '../../../../widgets/vendor/dashboard_item_home.dart';
import 'category_specialties_screen.dart';

class SpecialtiesScreen extends StatelessWidget {
  const SpecialtiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('التخصصات', style: txtBold05,),
        centerTitle: true,
        elevation: 0,
        leading: ArrowBackWidget(myContext: context),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DashboardItemHome(
            title: 'الخدمات',
            icon: const Icon(Icons.home_repair_service, color: AppColor.primaryColor, size: 32),
            subTitle: 'الخدمات والأقسام',
            onTap: (){
              navigationPush(context, const CategorySpecialtiesScreen());
            },
          ),
          const SizedBox(height: 15,),
          DashboardItemHome(
            title: 'المدن',
            icon: const Icon(Icons.location_on, color: AppColor.primaryColor, size: 32),
            subTitle: 'المدن التي تتواجد فيها خدماتك',
            onTap: (){
              navigationPush(context, const VendorCitiesScreen());
            },
          ),
          // const SizedBox(height: 15,),
          // DashboardItemHome(
          //   title: 'الماركات',
          //   icon: const Icon(Icons.label_important, color: AppColor.primaryColor, size: 32),
          //   subTitle: 'ماركات الخدمات المتوفرة معك',
          //   onTap: (){
          //     navigationPush(context, const VendorBrandCarScreen());
          //   },
          // ),
        ],
      ),),
    );
  }
}
