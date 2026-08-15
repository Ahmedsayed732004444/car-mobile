import 'dart:io';

import 'package:car_mediator_mobile/core/localization/app_language_provider.dart';
import 'package:car_mediator_mobile/models/city_model.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/cache_provider.dart';
import '../../../../core/providers/dynamic_form_provider.dart';
import '../../../../core/providers/orders/create_order_provider.dart';
import '../../../../core/utils/constants/enumeration.dart';
import '../../../../core/utils/form_validator.dart';
import '../../../../models/brand_car_model.dart';
import '../../../../models/custom_field_model.dart';
import '../../../../widgets/components.dart';
import '../../../../widgets/container_fields_widget.dart';
import '../../../../widgets/custom_container_listtile_widget.dart';
import '../../../../widgets/custom_fields/build_dynamic_fields_widget.dart';
import '../../../../widgets/custom_textfield.dart';

class FormCreateOrderWidget extends StatelessWidget {
  const FormCreateOrderWidget(
      {super.key,
      required this.customFieldsList,
      required this.descriptionController,
      required this.myCityController});
  final List<CustomFieldModel> customFieldsList;
  final TextEditingController descriptionController;
  final TextEditingController myCityController;

  @override
  Widget build(BuildContext context) {
    final _isArabic = context.read<AppLanguageProvider>().isArabic;
    final _createOrderProvider = context.read<CreateOrderProvider>();
    final _cacheProvider = context.read<CacheProvider>();

    return ListView(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      children: [
        if (_createOrderProvider.isCategoryHasBrand)
          ContainerFieldsWidget(
            title: 'الموديل',
            children: [
              DropdownSearch<BrandCarModel>(
                dropdownDecoratorProps: customDropdownDecoratorProps(
                    label: 'الموديل', hint: 'إختر الموديل'),
                popupProps: popupPropsBottomSheet<BrandCarModel>(
                  titleBottomSheet: 'الموديل',
                  itemBuilder: (BuildContext context, BrandCarModel item,
                      bool isSelected) {
                    return CustomContainerListTileWidget(
                      title:
                          _isArabic ? item.brandCarNameAr : item.brandCarNameEn,
                    );
                  },
                ),
                items: _cacheProvider.brandsCarsList,
                selectedItem: _createOrderProvider.brandSelectedModel,
                itemAsString: (BrandCarModel? u) =>
                    (_isArabic ? u?.brandCarNameAr : u?.brandCarNameEn) ?? '',
                validator: FormValidatorUtils.objectValidator,
                onChanged: (BrandCarModel? selection) =>
                    _createOrderProvider.selectedBrand(selection),
              ),
            ],
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
              validator: (value) => FormValidatorUtils.textValidator(value,
                  isRequired: true, minLength: 3, maxLength: 4000),
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
                  label: 'مدينتك', hint: 'إختر مدينتك'),
              popupProps: popupPropsBottomSheet<CityModel>(
                titleBottomSheet: 'مدينتك',
                itemBuilder: (BuildContext context, CityModel item,
                    bool isSelected) {
                  return CustomContainerListTileWidget(
                    title:
                    _isArabic ? item.cityNameAr : item.cityNameEn,
                  );
                },
              ),
              items: _cacheProvider.citiesList,
              selectedItem: _createOrderProvider.myCitySelectedModel,
              itemAsString: (CityModel? u) =>
              (_isArabic ? u?.cityNameAr : u?.cityNameEn) ?? '',
              validator: FormValidatorUtils.objectValidator,
              onChanged: (CityModel? selection) =>
                  _createOrderProvider.selectedMyCity(selection),
            ),
            const SizedBox(height: 16,),
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
  const _buildFieldsByType(
      {super.key,
      required this.isArabic,
      required this.showFileFields,
      required this.customFieldsList});
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
