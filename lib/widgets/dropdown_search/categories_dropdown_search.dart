import 'package:car_mediator_mobile/core/providers/vendors/register_vendor_provider.dart';
import 'package:car_mediator_mobile/models/category_model.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/localization/app_language_provider.dart';
import '../../core/providers/cache_provider.dart';
import '../../core/providers/vendors/specialty_vendor_provider.dart';
import '../../core/utils/form_validator.dart';
import '../../core/utils/size_config.dart';
import '../components.dart';
import 'category_dropdown_builder_multiselection_widget.dart';

class CategoriesDropdownSearch extends StatelessWidget {
  const CategoriesDropdownSearch({super.key, this.selectedCategories, this.onChanged, this.filled, this.fillColor});
  final List<CategoryModel>? selectedCategories;
  final ValueChanged<List<CategoryModel>>? onChanged;
  final bool? filled;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    final _isArabic = context.read<AppLanguageProvider>().isArabic;
    final _cacheProvider = context.read<CacheProvider>();
    final _provider = Provider.of<SpecialtyVendorProvider>(context);

    return DropdownSearch<CategoryModel>.multiSelection(
      dropdownDecoratorProps: customDropdownDecoratorProps(label: 'الخدمات', hint: 'إختر الخدمات', filled: filled, fillColor: fillColor),
      popupProps: popupPropsMultiSelectionBottomSheet<CategoryModel>(context, titleBottomSheet:  'الخدمات', showSearchBox: false,
        validationWidgetBuilder: (context, selectedItems) {
          return Padding(
            padding: EdgeInsets.only(bottom: SizeConfig.heightResponsive(0.07)),
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {

                  // تحديث الـ Provider
                  _provider.changeCategories(selectedItems);

                  // إغلاق الـ BottomSheet
                  Navigator.pop(context, selectedItems);
                },
                child: Text(
                  'تحديد',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.widthResponsive(0.04),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          );
        },
      ),
      items: _cacheProvider.categoriesList,
      dropdownBuilder:(BuildContext context, List<CategoryModel> selectedItems) {
        return CategoryDropdownBuilderMultiselectionWidget(selectedItems: selectedItems,hint: 'إختر الخدمات',);
      },
      clearButtonProps: const ClearButtonProps(
        color: Colors.red,
        isVisible: true,
      ),
      selectedItems: selectedCategories ?? [],
      itemAsString: (CategoryModel u) => (_isArabic ? u.catNameAr : u.catNameEn) ?? '',
      validator: FormValidatorUtils.objectValidator,
      onChanged: onChanged,
    );
  }
}
