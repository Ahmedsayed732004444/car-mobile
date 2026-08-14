import 'dart:io';

import 'package:car_mediator_mobile/core/utils/date_parser_utils.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/providers/dynamic_form_provider.dart';
import '../../core/utils/constants/colors_constants.dart';
import '../../core/utils/constants/enumeration.dart';
import '../../core/utils/form_validator.dart';
import '../../core/utils/permissions_utils.dart';
import '../../core/utils/size_config.dart';
import '../../core/utils/utils.dart';
import '../../models/custom_field_model.dart';
import '../components.dart';
import '../custom_container_listtile_widget.dart';
import '../custom_textfield.dart';

class BuildDynamicFieldsWidget extends StatelessWidget {
  const BuildDynamicFieldsWidget(
      {super.key,
      required this.fieldModel,
      required this.provider,
      required this.label});
  final String label;
  final CustomFieldModel fieldModel;
  final DynamicFormProvider provider;

  @override
  Widget build(BuildContext context) {
    if (fieldModel.fieldType == CustomFieldTypeEnum.text.name) {
      return CustomTextField(
        label: label,
        hint: label,
        controller: provider.getController(fieldModel.fieldName),
        validator: (value) => FormValidatorUtils.textValidator(value,
            isRequired: fieldModel.isRequired,
            maxLength: fieldModel.maxLength,
            minLength: fieldModel.minLength),
      );
    }

    if (fieldModel.fieldType == CustomFieldTypeEnum.text_area.name) {
      return CustomTextField(
        label: label,
        hint: label,
        controller: provider.getController(fieldModel.fieldName),
        validator: (value) => FormValidatorUtils.textValidator(value,
            isRequired: fieldModel.isRequired,
            maxLength: fieldModel.maxLength,
            minLength: fieldModel.minLength),
        maxLines: 4,
        maxLength: fieldModel.maxLength,
      );
    }

    if (fieldModel.fieldType == CustomFieldTypeEnum.number.name) {
      return CustomTextField(
        label: label,
        hint: label,
        keyboardType: TextInputType.number,
        controller: provider.getController(fieldModel.fieldName),
        validator: (value) => FormValidatorUtils.numberValidator(
          value,
          isRequired: fieldModel.isRequired,
        ),
      );
    }

    if (fieldModel.fieldType == CustomFieldTypeEnum.select.name) {
      return _SelectFormField(
        label: label,
        fieldModel: fieldModel,
        provider: provider,
      );
    }

    if (fieldModel.fieldType == CustomFieldTypeEnum.checkbox.name) {
      return _CheckBoxFormField(
        label: label,
        fieldModel: fieldModel,
        provider: provider,
      );
    }

    if (fieldModel.fieldType == CustomFieldTypeEnum.radio.name) {
      return _RadioFormField(
        label: label,
        fieldModel: fieldModel,
        provider: provider,
      );
    }
    if (fieldModel.fieldType == CustomFieldTypeEnum.date.name) {
      return CustomTextField(
        label: label,
        hint: label,
        readOnly: true,
        controller: provider.getController(fieldModel.fieldName),
        validator: (value) => FormValidatorUtils.textValidator(
          value,
          isRequired: fieldModel.isRequired,
        ),
        onTap: () async {
          provider.getController(fieldModel.fieldName).text = await DateParserUtils.getDatePicker(context);
        },
      );
    }
    if (fieldModel.fieldType == CustomFieldTypeEnum.file.name) {
      return _FileFormField(
        label: label,
        fieldModel: fieldModel,
        provider: provider,
      );
    }

    return const SizedBox.shrink();
  }
}

class _SelectFormField extends StatelessWidget {
  const _SelectFormField(
      {super.key,
      required this.fieldModel,
      required this.provider,
      required this.label});
  final String label;
  final CustomFieldModel fieldModel;
  final DynamicFormProvider provider;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
      dropdownDecoratorProps:
          customDropdownDecoratorProps(label: label, hint: 'إختر ${label}'),
      popupProps: popupPropsBottomSheet<String>(
        titleBottomSheet: label,
        itemBuilder: (BuildContext context, String item, bool isSelected) {
          return CustomContainerListTileWidget(
            title: item,
          );
        },
      ),
      items: fieldModel.options ?? [],
      itemAsString: (String? u) => u.toString() ?? '',
      validator: (value) {
        if (fieldModel.isRequired && (value == null || value.isEmpty)) {
          return 'هذا الحقل مطلوب';
        }
        return null;
      },
      onChanged: (String? value) =>
          provider.updateValue(fieldModel.fieldName, value),
    );
  }

}

class _CheckBoxFormField extends StatelessWidget {
  const _CheckBoxFormField(
      {super.key,
      required this.fieldModel,
      required this.provider,
      required this.label});
  final String label;
  final CustomFieldModel fieldModel;
  final DynamicFormProvider provider;

  @override
  Widget build(BuildContext context) {
    return FormField<List<String>>(
      initialValue: provider.getValue(fieldModel.fieldName) ?? [],
      validator: (value) {
        if (fieldModel.isRequired && (value == null || value.isEmpty)) {
          return 'يجب اختيار خيار واحد على الأقل';
        }
        return null;
      },
      builder: (formState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...fieldModel.options!.map((opt) {
              final selected =
                  (provider.getValue(fieldModel.fieldName) as List?)
                          ?.contains(opt) ??
                      false;
              return CheckboxListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 0,
                ),
                title: Text(opt),
                value: selected,
                onChanged: (val) {
                  final current = List<String>.from(
                      provider.getValue(fieldModel.fieldName) ?? []);
                  if (val == true) {
                    current.add(opt);
                  } else {
                    current.remove(opt);
                  }
                  provider.updateValue(fieldModel.fieldName, current);
                  formState.didChange(current);
                },
              );
            }),
            if (formState.hasError)
              Text(formState.errorText!,
                  style: const TextStyle(color: Colors.red)),
          ],
        );
      },
    );
  }
}

class _RadioFormField extends StatelessWidget {
  const _RadioFormField(
      {super.key,
      required this.fieldModel,
      required this.provider,
      required this.label});
  final String label;
  final CustomFieldModel fieldModel;
  final DynamicFormProvider provider;

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      initialValue: provider.getValue(fieldModel.fieldName),
      validator: (value) {
        if (fieldModel.isRequired && (value == null || value.isEmpty)) {
          return 'يجب اختيار خيار واحد';
        }
        return null;
      },
      builder: (formState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...fieldModel.options!.map((opt) {
              return RadioListTile<String>(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 0,
                ),
                title: Text(opt),
                value: opt,
                groupValue: formState.value,
                onChanged: (val) {
                  provider.updateValue(fieldModel.fieldName, val);
                  formState.didChange(val);
                },
              );
            }),
            if (formState.hasError)
              Text(formState.errorText!,
                  style: const TextStyle(color: Colors.red)),
          ],
        );
      },
    );
  }
}

class _FileFormField extends StatelessWidget {
  const _FileFormField(
      {super.key,
      required this.fieldModel,
      required this.provider,
      required this.label});
  final String label;
  final CustomFieldModel fieldModel;
  final DynamicFormProvider provider;

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      initialValue: provider.getValue(fieldModel.fieldName),
      validator: (value) {
        if (fieldModel.isRequired && (value == null || value.isEmpty)) {
          return 'هذا الحقل مطلوب';
        }
        return null;
      },
      builder: (formState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () async {
                if(await PermissionsUtils.checkCameraAndGalleryPermission(context)){
                  final _path = await Utils.getImagePath(ImageSource.gallery);
                  if (_path != null) {
                    print(_path);
                    provider.updateValue(fieldModel.fieldName, _path);
                    formState.didChange(_path);
                  }
                }
              },
              child: Container(
                height: 150,
                width: SizeConfig.widthResponsive(0.50),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                  color: AppColor.secondaryColor,
                ),
                child: formState.value != null && formState.value!.isNotEmpty
                    ? Stack(
                        fit: StackFit.expand,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.file(
                              File(formState.value!),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 5,
                            right: 5,
                            child: InkWell(
                              onTap: () {
                                provider.updateValue(fieldModel.fieldName, "");
                                formState.didChange("");
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                                padding: const EdgeInsets.all(4),
                                child: const Icon(Icons.close,
                                    color: Colors.white, size: 18),
                              ),
                            ),
                          ),
                        ],
                      )
                    : const Center(
                        child: Icon(Icons.add_a_photo,
                            size: 40, color: AppColor.primaryColor),
                      ),
              ),
            ),
            if (formState.hasError)
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  formState.errorText!,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
          ],
        );
      },
    );
  }
}
