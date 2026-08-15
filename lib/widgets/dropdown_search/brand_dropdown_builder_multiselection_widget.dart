import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/localization/app_language_provider.dart';
import '../../core/utils/constants/colors_constants.dart';
import '../../core/utils/size_config.dart';
import '../../models/brand_car_model.dart';

class BrandDropDownBuilderMultiSelectionWidget extends StatelessWidget {
  const BrandDropDownBuilderMultiSelectionWidget({
    super.key,
    this.selectedItems,
    required this.hint,
    this.totalBrandsCount = 0,
  });

  final List<BrandCarModel>? selectedItems;
  final String hint;
  final int totalBrandsCount;

  @override
  Widget build(BuildContext context) {
    final isArabic = context.read<AppLanguageProvider>().isArabic;

    if (selectedItems == null || selectedItems!.isEmpty) {
      return Wrap(
        children: [
          Text(
            hint,
            style: TextStyle(
              color: AppColor.greyShade2,
              fontSize: SizeConfig.widthResponsive(0.04),
              fontStyle: FontStyle.normal,
            ),
          )
        ],
      );
    }

    if (totalBrandsCount > 0 && selectedItems!.length == totalBrandsCount) {
      return Wrap(
        children: [
          Text(
            'جميع الشركات',
            style: TextStyle(
              color: AppColor.blackColor,
              fontSize: SizeConfig.widthResponsive(0.04),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      );
    }

    return Wrap(
      children: [
        Text(
          selectedItems!
              .map((e) => (isArabic ? e.brandCarNameAr : e.brandCarNameEn) ?? '')
              .join(" - "),
          style: TextStyle(
            color: AppColor.blackColor,
            fontSize: SizeConfig.widthResponsive(0.04),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
