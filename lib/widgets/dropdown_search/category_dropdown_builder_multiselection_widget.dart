
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/localization/app_language_provider.dart';
import '../../core/utils/constants/colors_constants.dart';
import '../../core/utils/size_config.dart';


class CategoryDropdownBuilderMultiselectionWidget extends StatelessWidget {
  const CategoryDropdownBuilderMultiselectionWidget({super.key, this.selectedItems, required this.hint});
  final List? selectedItems;
  final String hint;

  @override
  Widget build(BuildContext context) {
    final _isArabic = context.read<AppLanguageProvider>().isArabic;

    if(selectedItems?.isEmpty ?? false) {
      return Wrap(
        children: [Text(hint,style: TextStyle(color:AppColor.greyShade2, fontSize: SizeConfig.widthResponsive(0.04), fontStyle: FontStyle.normal,))],
      );
    }

    return Wrap(
      children: [
        Text(
          selectedItems
              ?.map((e) => _isArabic ? e.catNameAr : e.catNameEn)
              .join(" - ") ?? "",
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
