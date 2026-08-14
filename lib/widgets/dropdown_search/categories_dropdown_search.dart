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
  const CategoriesDropdownSearch({
    super.key,
    this.selectedCategories,
    this.onChanged,
    this.filled,
    this.fillColor,
  });

  final List<CategoryModel>? selectedCategories;
  final ValueChanged<List<CategoryModel>>? onChanged;
  final bool? filled;
  final Color? fillColor;

  void _showCategoriesBottomSheet(
    BuildContext context,
    CacheProvider cacheProvider,
  ) {
    final allCategories = cacheProvider.categoriesList;
    final List<CategoryModel> tempSelected =
        List<CategoryModel>.from(selectedCategories ?? []);
    final _isArabic = context.read<AppLanguageProvider>().isArabic;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            final bool isAllSelected =
                tempSelected.length == allCategories.length && allCategories.isNotEmpty;

            return Container(
              height: MediaQuery.of(context).size.height * 0.70,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 8),
                    child: Column(
                      children: [
                        Container(
                          width: SizeConfig.widthResponsive(0.40),
                          height: 3,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (isAllSelected) {
                                    tempSelected.clear();
                                  } else {
                                    tempSelected.clear();
                                    tempSelected.addAll(allCategories);
                                  }
                                });
                              },
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: isAllSelected,
                                    activeColor: AppColor.primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    onChanged: (bool? checked) {
                                      setState(() {
                                        if (checked == true) {
                                          tempSelected.clear();
                                          tempSelected.addAll(allCategories);
                                        } else {
                                          tempSelected.clear();
                                        }
                                      });
                                    },
                                  ),
                                  const Text(
                                    'تحديد الكل',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'الخدمات',
                              style: TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: SizeConfig.widthResponsive(0.05),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(height: 1),
                  Expanded(
                    child: ListView.builder(
                      itemCount: allCategories.length,
                      itemBuilder: (context, index) {
                        final cat = allCategories[index];
                        final bool isSelected = tempSelected.any((e) => e.id == cat.id);
                        final catName = (_isArabic ? cat.catNameAr : cat.catNameEn) ?? '';

                        return CheckboxListTile(
                          value: isSelected,
                          activeColor: AppColor.primaryColor,
                          title: Text(
                            catName,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onChanged: (bool? checked) {
                            setState(() {
                              if (checked == true) {
                                if (!tempSelected.any((e) => e.id == cat.id)) {
                                  tempSelected.add(cat);
                                }
                              } else {
                                tempSelected.removeWhere((e) => e.id == cat.id);
                              }
                            });
                          },
                        );
                      },
                    ),
                  ),
                  const Divider(height: 1),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: SizeConfig.heightResponsive(0.04),
                      left: 20,
                      right: 20,
                      top: 10,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          if (onChanged != null) {
                            onChanged!(tempSelected);
                          }
                          Navigator.pop(context);
                        },
                        child: Text(
                          'تحديد',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.widthResponsive(0.04),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final _cacheProvider = context.read<CacheProvider>();

    return InkWell(
      onTap: () => _showCategoriesBottomSheet(context, _cacheProvider),
      child: InputDecorator(
        decoration: customDropdownDecoratorProps(
          label: 'الخدمات',
          hint: 'إختر الخدمات',
          filled: filled,
          fillColor: fillColor,
        ).dropdownSearchDecoration!,
        child: CategoryDropdownBuilderMultiselectionWidget(
          selectedItems: selectedCategories ?? [],
          hint: 'إختر الخدمات',
        ),
      ),
    );
  }
}
