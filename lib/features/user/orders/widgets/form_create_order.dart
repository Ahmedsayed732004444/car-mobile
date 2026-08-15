import 'dart:io';

import 'package:car_mediator_mobile/core/localization/app_language_provider.dart';
import 'package:car_mediator_mobile/models/city_model.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/cache_provider.dart';
import '../../../../core/providers/dynamic_form_provider.dart';
import '../../../../core/providers/orders/create_order_provider.dart';
import '../../../../core/styles/styles.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/constants/enumeration.dart';
import '../../../../core/utils/form_validator.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../models/brand_car_model.dart';
import '../../../../models/custom_field_model.dart';
import '../../../../widgets/components.dart';
import '../../../../widgets/container_fields_widget.dart';
import '../../../../widgets/custom_container_listtile_widget.dart';
import '../../../../widgets/custom_fields/build_dynamic_fields_widget.dart';
import '../../../../widgets/custom_textfield.dart';
import '../../../../widgets/dropdown_search/brand_dropdown_builder_multiselection_widget.dart';

class FormCreateOrderWidget extends StatelessWidget {
  const FormCreateOrderWidget({
    super.key,
    required this.customFieldsList,
    required this.descriptionController,
    required this.myCityController,
  });

  final List<CustomFieldModel> customFieldsList;
  final TextEditingController descriptionController;
  final TextEditingController myCityController;

  void _showBrandsBottomSheet(
    BuildContext context,
    CacheProvider cacheProvider,
    CreateOrderProvider createOrderProvider,
  ) {
    final allBrands = cacheProvider.brandsCarsList;
    final List<BrandCarModel> tempSelected = List<BrandCarModel>.from(createOrderProvider.selectedBrandsList);
    final isArabic = context.read<AppLanguageProvider>().isArabic;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            final bool isAllSelected = tempSelected.length == allBrands.length && allBrands.isNotEmpty;

            return Container(
              height: MediaQuery.of(context).size.height * 0.75,
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
                                    tempSelected.addAll(allBrands);
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
                                          tempSelected.addAll(allBrands);
                                        } else {
                                          tempSelected.clear();
                                        }
                                      });
                                    },
                                  ),
                                  const Text(
                                    'البحث في جميع الشركات',
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
                              'الموديل',
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
                      itemCount: allBrands.length,
                      itemBuilder: (context, index) {
                        final brand = allBrands[index];
                        final bool isSelected = tempSelected.any((e) => e.id == brand.id);
                        final brandName = (isArabic ? brand.brandCarNameAr : brand.brandCarNameEn) ?? '';

                        return CheckboxListTile(
                          value: isSelected,
                          activeColor: AppColor.primaryColor,
                          title: Text(
                            brandName,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onChanged: (bool? checked) {
                            setState(() {
                              if (checked == true) {
                                if (!tempSelected.any((e) => e.id == brand.id)) {
                                  tempSelected.add(brand);
                                }
                              } else {
                                tempSelected.removeWhere((e) => e.id == brand.id);
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
                          backgroundColor: AppColor.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          createOrderProvider.changeSelectedBrands(tempSelected);
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
    final _isArabic = context.read<AppLanguageProvider>().isArabic;
    final _createOrderProvider = Provider.of<CreateOrderProvider>(context);
    final _cacheProvider = context.read<CacheProvider>();

    return ListView(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      children: [
        if (_createOrderProvider.isCategoryHasBrand)
          ContainerFieldsWidget(
            title: 'الموديل',
            children: [
              if (_createOrderProvider.categorySelectedModel?.catNameAr.contains('جديد') ?? false)
                InkWell(
                  onTap: () => _showBrandsBottomSheet(context, _cacheProvider, _createOrderProvider),
                  child: InputDecorator(
                    decoration: customDropdownDecoratorProps(label: 'الموديل', hint: 'إختر الموديل').dropdownSearchDecoration!,
                    child: BrandDropDownBuilderMultiSelectionWidget(
                      selectedItems: _createOrderProvider.selectedBrandsList,
                      hint: 'إختر الموديل',
                      totalBrandsCount: _cacheProvider.brandsCarsList.length,
                    ),
                  ),
                )
              else
                DropdownSearch<BrandCarModel>(
                  dropdownDecoratorProps: customDropdownDecoratorProps(
                      label: 'الموديل', hint: 'إختر الموديل'),
                  popupProps: popupPropsBottomSheet<BrandCarModel>(
                    titleBottomSheet: 'الموديل',
                    itemBuilder: (BuildContext context, BrandCarModel item, bool isSelected) {
                      return CustomContainerListTileWidget(
                        title: _isArabic ? item.brandCarNameAr : item.brandCarNameEn,
                      );
                    },
                  ),
                  items: _cacheProvider.brandsCarsList,
                  selectedItem: _createOrderProvider.brandSelectedModel,
                  itemAsString: (BrandCarModel? u) => (_isArabic ? u?.brandCarNameAr : u?.brandCarNameEn) ?? '',
                  validator: FormValidatorUtils.objectValidator,
                  onChanged: (BrandCarModel? selection) => _createOrderProvider.selectedBrand(selection),
                ),
            ],
          ),
        if (_createOrderProvider.categorySelectedModel?.catNameAr.contains('قطع') ?? false)
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: ContainerFieldsWidget(
              title: 'تفاصيل قطع الغيار',
              children: [
                CustomTextField(
                  label: 'اسم السيارة',
                  hint: 'إكتب اسم وموديل السيارة (مثال: تويوتا كامري 2022)',
                  controller: context.read<DynamicFormProvider>().getController('car_name'),
                  validator: (value) => FormValidatorUtils.textValidator(
                    value,
                    isRequired: true,
                    minLength: 2,
                    maxLength: 255,
                  ),
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  label: 'اسم القطعة',
                  hint: 'إكتب اسم القطعة المطلوبة (مثال: مساعدين أمامية)',
                  controller: context.read<DynamicFormProvider>().getController('part_name'),
                  validator: (value) => FormValidatorUtils.textValidator(
                    value,
                    isRequired: true,
                    minLength: 2,
                    maxLength: 255,
                  ),
                ),
              ],
            ),
          ),
        _buildFieldsByType(
          customFieldsList: customFieldsList,
          isArabic: _isArabic,
          showFileFields: false,
        ),
        const SizedBox(
          height: 16,
        ),
        ContainerFieldsWidget(
          title: 'تفاصيل الطلب',
          children: [
            CustomTextField(
              label: 'التفاصيل',
              hint: 'إكتب وصف وتفاصيل الطلب...',
              maxLines: 8,
              controller: descriptionController,
              validator: (value) => FormValidatorUtils.textValidator(
                value,
                isRequired: true,
                minLength: 3,
                maxLength: 4000,
              ),
              maxLength: 4000,
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        ContainerFieldsWidget(
          title: 'مدينتك',
          children: [
            DropdownSearch<CityModel>(
              dropdownDecoratorProps: customDropdownDecoratorProps(
                label: 'مدينتك',
                hint: 'إختر مدينتك',
              ),
              popupProps: popupPropsBottomSheet<CityModel>(
                titleBottomSheet: 'مدينتك',
                itemBuilder: (BuildContext context, CityModel item, bool isSelected) {
                  return CustomContainerListTileWidget(
                    title: _isArabic ? item.cityNameAr : item.cityNameEn,
                  );
                },
              ),
              items: _cacheProvider.citiesList,
              selectedItem: _createOrderProvider.myCitySelectedModel,
              itemAsString: (CityModel? u) => (_isArabic ? u?.cityNameAr : u?.cityNameEn) ?? '',
              validator: FormValidatorUtils.objectValidator,
              onChanged: (CityModel? selection) => _createOrderProvider.selectedMyCity(selection),
            ),
            const SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'تحديد مدينتك لتقديم أسعار شحن دقيقة',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                  height: 1.5,
                ),
              ),
            )
          ],
        ),
        _buildFieldsByType(
          customFieldsList: customFieldsList,
          isArabic: _isArabic,
          showFileFields: true,
        ),
      ],
    );
  }
}

class _buildFieldsByType extends StatelessWidget {
  const _buildFieldsByType({
    super.key,
    required this.isArabic,
    required this.showFileFields,
    required this.customFieldsList,
  });

  final List<CustomFieldModel> customFieldsList;
  final bool isArabic;
  final bool showFileFields;

  @override
  Widget build(BuildContext context) {
    return Consumer<DynamicFormProvider>(
      builder: (context, dynamicFormProv, child) {
        final filteredFields = customFieldsList.where((field) {
          final isFileField = field.fieldType == CustomFieldTypeEnum.file.name;
          return showFileFields ? isFileField : !isFileField;
        }).toList();

        if (filteredFields.isEmpty) return const SizedBox.shrink();

        return ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: filteredFields.length,
          itemBuilder: (context, index) {
            final field = filteredFields[index];
            final label = isArabic ? field.labelAr : field.labelEn;

            return Padding(
              padding: const EdgeInsets.only(top: 16),
              child: ContainerFieldsWidget(
                title: label,
                children: [
                  BuildDynamicFieldsWidget(
                    label: label,
                    fieldModel: field,
                    provider: dynamicFormProv,
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
