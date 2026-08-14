
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/localization/app_language_provider.dart';
import '../../core/providers/cache_provider.dart';
import '../../core/utils/form_validator.dart';
import '../../models/city_model.dart';
import '../components.dart';
import '../custom_container_listtile_widget.dart';

class CityDropdownSearch extends StatelessWidget {
  const CityDropdownSearch({super.key,  this.label = 'المدينة',  this.hint = 'إختر المدينة', required this.selectedCityModel, required this.onChanged, this.filled, this.fillColor});
  final String label;
  final String hint;
  final CityModel? selectedCityModel;
  final ValueChanged<CityModel?>? onChanged;
  final bool? filled;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    final _isArabic = context.read<AppLanguageProvider>().isArabic;
    final _cacheProvider = context.read<CacheProvider>();

    return DropdownSearch<CityModel>(
      dropdownDecoratorProps: customDropdownDecoratorProps(
          label: label, hint: hint, filled: filled, fillColor: fillColor),
      popupProps: popupPropsBottomSheet<CityModel>(
        titleBottomSheet: label,
        itemBuilder: (BuildContext context, CityModel item,
            bool isSelected) {
          return CustomContainerListTileWidget(
            title:
            _isArabic ? item.cityNameAr : item.cityNameEn,
          );
        },
      ),
      items: _cacheProvider.citiesList,
      selectedItem: selectedCityModel,
      itemAsString: (CityModel? u) =>
      (_isArabic ? u?.cityNameAr : u?.cityNameEn) ?? '',
      validator: FormValidatorUtils.objectValidator,
      onChanged: onChanged
    );
  }
}
