
import 'package:car_mediator_mobile/core/helpers/toast_helper.dart';
import 'package:car_mediator_mobile/models/custom_field_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/dynamic_form_provider.dart';
import '../../../../core/utils/constants/constants.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../widgets/container_fields_widget.dart';
import '../../../../widgets/custom_textfield.dart';

class CreateOrderScreen2 extends StatefulWidget {
  const CreateOrderScreen2({super.key, required this.customFieldsList});
  final List<CustomFieldModel> customFieldsList;

  @override
  State<CreateOrderScreen2> createState() => _CreateOrderScreen2State();
}

class _CreateOrderScreen2State extends State<CreateOrderScreen2> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final dynamicFormProv = Provider.of<DynamicFormProvider>(context);

    return  Scaffold(
      // appBar: const AppBarCreateOrderWidget(),
      body: Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            padding: const EdgeInsets.all(paddingConst),
            children: [
              ContainerFieldsWidget(
                title: 'تفاصيل الطلب' ,
                children: [

                  CustomTextField(
                    label: 'التفاصيل',
                    hint: 'إكتب وصف وتفاصيل الطلب...',
                    maxLines: 8,
                    // controller: descriptionController,
                    // validator: FormValidator.fieldValidator,
                    maxLength: 4000,
                  ),
                ],),

              ListView.builder(
                shrinkWrap: true,
                itemCount: widget.customFieldsList.length,
                itemBuilder: (context, index){
                  final field = widget.customFieldsList[index];

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildField(field, dynamicFormProv, context),
                  );
                },
              ),

              ElevatedButton(
                  onPressed: (){
                    if (_formKey.currentState!.validate()) {
                      final jsonData = dynamicFormProv.toJson();
                      ToastHelper.showInfo(jsonData.toString());
                    }
                  },
                  child: Text('submit'))
            ],
          )),
    );
  }

  Widget buildField(CustomFieldModel field, DynamicFormProvider provider, BuildContext context) {
    switch (field.fieldType) {
      case 'text':
        return TextFormField(
          controller: provider.getController(field.fieldName),
          decoration: InputDecoration(labelText: field.labelAr),
          validator: (value) {
            if (field.isRequired && (value == null || value.isEmpty)) {
              return 'هذا الحقل مطلوب';
            }
            if (field.minLength != null && value!.length < field.minLength!) {
              return 'يجب أن يكون الطول ${field.minLength} على الأقل';
            }
            if (field.maxLength != null && value!.length > field.maxLength!) {
              return 'يجب أن لا يزيد الطول عن ${field.maxLength}';
            }
            return null;
          },
        );

      case 'text_area':
        return TextFormField(
          controller: provider.getController(field.fieldName),
          maxLines: 5,
          decoration: InputDecoration(labelText: field.labelAr),
          validator: (value) {
            if (field.isRequired && (value == null || value.isEmpty)) {
              return 'هذا الحقل مطلوب';
            }
            return null;
          },
        );

      case 'number':
        return TextFormField(
          controller: provider.getController(field.fieldName),
          decoration: InputDecoration(labelText: field.labelAr),
          keyboardType: TextInputType.number,
          validator: (value) {
            if (field.isRequired && (value == null || value.isEmpty)) {
              return 'هذا الحقل مطلوب';
            }
            if (value != null && value.isNotEmpty && double.tryParse(value) == null) {
              return 'الرجاء إدخال رقم صحيح';
            }
            return null;
          },
        );

      case 'select':
        return DropdownButtonFormField<String>(
          decoration: InputDecoration(labelText: field.labelAr),
          items: field.options!
              .map((opt) => DropdownMenuItem(value: opt, child: Text(opt)))
              .toList(),
          onChanged: (value) => provider.updateValue(field.fieldName, value),
          validator: (value) {
            if (field.isRequired && (value == null || value.isEmpty)) {
              return 'هذا الحقل مطلوب';
            }
            return null;
          },
        );


      case 'checkbox':
        return FormField<List<String>>(
          initialValue: provider.getValue(field.fieldName) ?? [],
          validator: (value) {
            if (field.isRequired && (value == null || value.isEmpty)) {
              return 'يجب اختيار خيار واحد على الأقل';
            }
            return null;
          },
          builder: (formState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(field.labelAr, style: TextStyle(fontWeight: FontWeight.bold)),
                ...field.options!.map((opt) {
                  final selected = (provider.getValue(field.fieldName) as List?)?.contains(opt) ?? false;
                  return CheckboxListTile(
                    title: Text(opt),
                    value: selected,
                    onChanged: (val) {
                      final current = List<String>.from(provider.getValue(field.fieldName) ?? []);
                      if (val == true) {
                        current.add(opt);
                      } else {
                        current.remove(opt);
                      }
                      provider.updateValue(field.fieldName, current);
                      formState.didChange(current);
                    },
                  );
                }),
                if (formState.hasError)
                  Text(formState.errorText!, style: TextStyle(color: Colors.red)),
              ],
            );
          },
        );

      case 'radio':
        return FormField<String>(
          initialValue: provider.getValue(field.fieldName),
          validator: (value) {
            if (field.isRequired && (value == null || value.isEmpty)) {
              return 'يجب اختيار خيار واحد';
            }
            return null;
          },
          builder: (formState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(field.labelAr, style: TextStyle(fontWeight: FontWeight.bold)),
                ...field.options!.map((opt) {
                  return RadioListTile<String>(
                    title: Text(opt),
                    value: opt,
                    groupValue: formState.value,
                    onChanged: (val) {
                      provider.updateValue(field.fieldName, val);
                      formState.didChange(val);
                    },
                  );
                }),
                if (formState.hasError)
                  Text(formState.errorText!, style: TextStyle(color: Colors.red)),
              ],
            );
          },
        );

      case 'date':
        return TextFormField(
          controller: provider.getController(field.fieldName),
          readOnly: true,
          decoration: InputDecoration(labelText: field.labelAr),
          validator: (value) {
            if (field.isRequired && (value == null || value.isEmpty)) {
              return 'هذا الحقل مطلوب';
            }
            return null;
          },
          onTap: () async {
            DateTime? picked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime(2100),
            );
            if (picked != null) {
              provider.getController(field.fieldName).text = picked.toIso8601String().split('T').first;
            }
          },
        );

      case 'file':
        return FormField<String>(
          initialValue: provider.getValue(field.fieldName),
          validator: (value) {
            if (field.isRequired && (value == null || value.isEmpty)) {
              return 'هذا الحقل مطلوب';
            }
            return null;
          },
          builder: (formState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton.icon(
                  onPressed: () async {
                    // استدعاء file picker
                    // (يحتاج مكتبة مثل file_picker)
                    // مثلاً:
                    // FilePickerResult? result = await FilePicker.platform.pickFiles();
                    // if (result != null && result.files.single.path != null) {
                    //   final path = result.files.single.path!;
                    //   provider.updateValue(field.fieldName, path);
                    //   formState.didChange(path);
                    // }

                    // لأغراض التجريب بدون مكتبة:
                    final path = "/dummy/path/to/file.png";
                    provider.updateValue(field.fieldName, path);
                    formState.didChange(path);
                  },
                  icon: Icon(Icons.upload_file),
                  label: Text(field.labelAr),
                ),
                if (formState.value != null && formState.value!.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "تم اختيار الملف: ${formState.value!.split('/').last}",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                if (formState.hasError)
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      formState.errorText!,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
              ],
            );
          },
        );


      default:
        return SizedBox.shrink();
    }
  }


}
