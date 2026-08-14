
import 'package:car_mediator_mobile/core/utils/constants/assets_path.dart';
import 'package:car_mediator_mobile/core/utils/constants/colors_constants.dart';
import 'package:car_mediator_mobile/features/vendor/app_commission/screens/payment_transfer_bank_screen.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/helpers/helpers.dart';
import '../../../../core/localization/app_language_provider.dart';
import '../../../../core/providers/cache_provider.dart';
import '../../../../core/providers/vendors/app_commission_provider.dart';
import '../../../../core/styles/styles.dart';
import '../../../../core/utils/form_validator.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../models/category_model.dart';
import '../../../../widgets/arrow_back_widget.dart';
import '../../../../widgets/components.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_container_listtile_widget.dart';
import '../../../../widgets/custom_textfield.dart';
import '../../../../widgets/info_widget.dart';

class AppCommissionScreen extends StatefulWidget {
  const AppCommissionScreen({super.key});

  @override
  State<AppCommissionScreen> createState() => _AppCommissionScreenState();
}

class _AppCommissionScreenState extends State<AppCommissionScreen> {
  final _formKey = GlobalKey<FormState>();
  final _priceController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _priceController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final _isArabic = context.read<AppLanguageProvider>().isArabic;
    final _cacheProvider = context.read<CacheProvider>();
    final _appCommissionProvider = Provider.of<AppCommissionProvider>(context);

    return Scaffold(
      backgroundColor: AppColor.secondaryColor,
      appBar: AppBar(
        title: Text('حساب عمولة التطبيق', style: txtBold05,),
        centerTitle: true,
        elevation: 0,
        leading: ArrowBackWidget(myContext: context),
      ),

      body: Form(
        key: _formKey,
          child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: [
          const InfoWidget(text: 'الرسوم أمانة في ذمة الشركة سواء تمت المبايعة عن طريق التطبيق أو بسببة.',),
          const SizedBox(height: 20,),
          Container(
            padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('حساب الرسوم', style: txtBold04,),
                const SizedBox(height: 10,),
                DropdownSearch<CategoryModel>(
                  dropdownDecoratorProps: customDropdownDecoratorProps(
                      label: 'القسم', hint: 'إختر القسم'),
                  popupProps: popupPropsBottomSheet<CategoryModel>(
                    titleBottomSheet: 'القسم',
                    itemBuilder: (BuildContext context, CategoryModel item,
                        bool isSelected) {
                      return CustomContainerListTileWidget(
                        title:
                        _isArabic ? item.catNameAr : item.catNameEn,
                      );
                    },
                  ),
                  items: _cacheProvider.categoriesList,
                  selectedItem: _appCommissionProvider.categoryModelSelected,
                  itemAsString: (CategoryModel? u) =>
                  (_isArabic ? u?.catNameAr : u?.catNameEn) ?? '',
                  validator: FormValidatorUtils.objectValidator,
                  onChanged: (CategoryModel? selection) =>
                      _appCommissionProvider.selectedCategory(selection),
                ),
                const SizedBox(height: 20,),
                CustomTextField(
                  label: 'سعر البيع',
                  hint: 'ادخل سعر البيع',
                  controller: _priceController,
                  validator: (value) => FormValidatorUtils.textValidator(value,
                      isRequired: true
                ),),
                const SizedBox(height: 20,),
                CustomButton(
                  label: 'إحسب',
                  primaryColor: AppColor.primaryColor,
                  txtSize: SizeConfig.widthResponsive(0.05),
                  loading: false,
                  onTap: () {
                    Helper.dismissKeyBoard();
                    if (_formKey.currentState!.validate()) {
                      _appCommissionProvider.calculateCommission(double.parse(_priceController.text));
                    }
                  }
                ),

                const SizedBox(height: 50,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('الرسوم المستحقة   : ', style: txtBold04,),
                    const SizedBox(width: 10,),
                    Text('${_appCommissionProvider.commissionFees}', style: TextStyle(fontSize: 32),),
                    const SizedBox(width: 10,),
                    Image.asset(AssetsPath.icon_riyal, height: 20, width: 20,),
                  ],
                ),
                const SizedBox(height: 60,),
                CustomButton(
                    label: 'الدفع البنكي لسداد العمولة',
                    primaryColor: AppColor.primaryColor,
                    txtSize: SizeConfig.widthResponsive(0.05),
                    loading: false,
                    onTap: () {
                      Helper.dismissKeyBoard();
                      navigationPush(context, PaymentTransferBankScreen());
                    }
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
