
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/helpers/helpers.dart';
import '../../../../core/helpers/toast_helper.dart';
import '../../../../core/providers/vendors/app_commission_provider.dart';
import '../../../../core/styles/styles.dart';
import '../../../../core/utils/connection_utils.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/date_parser_utils.dart';
import '../../../../core/utils/dialogUtils.dart';
import '../../../../core/utils/form_validator.dart';
import '../../../../core/utils/image_picker_bottom_sheet_utils.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../widgets/arrow_back_widget.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_textfield.dart';
import '../../../../widgets/images/add_image_widget.dart';

class PaymentTransferBankScreen extends StatefulWidget {
  const PaymentTransferBankScreen({super.key});

  @override
  State<PaymentTransferBankScreen> createState() => _PaymentTransferBankScreenState();
}

class _PaymentTransferBankScreenState extends State<PaymentTransferBankScreen> {
  final _formKey = GlobalKey<FormState>();
  final _amountController = TextEditingController();
  final _dateController = TextEditingController();
  final _nameController = TextEditingController();
  final _numberRequestController = TextEditingController();
  final _noteController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _amountController.dispose();
    _dateController.dispose();
    _nameController.dispose();
    _numberRequestController.dispose();
    _noteController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _appCommissionProvider = Provider.of<AppCommissionProvider>(context);

    return Scaffold(
      backgroundColor: AppColor.secondaryColor,
      appBar: AppBar(
        title: Text('تحويل بنكي', style: txtBold05,),
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

              Container(
                padding:  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                    Text('نموذج التحويل البنكي', style: txtBold04,),
                    const SizedBox(height: 30,),
                    CustomTextField(
                      label: 'مبلغ التحويل',
                      hint: 'إدخل المبلغ',
                      controller: _amountController,
                      keyboardType: TextInputType.number,
                      validator: (value) => FormValidatorUtils.textValidator(value,
                          isRequired: true
                      ),),
                    const SizedBox(height: 16,),
                    CustomTextField(
                      label: 'تاريخ التحويل',
                      hint: 'إدخل تاريخ',
                      controller: _dateController,
                      readOnly: true,
                      onTap: () async {
                        String _date = await DateParserUtils.getDateFormattedController(context);
                        setState(() {
                          _dateController.text = _date;
                        });
                      },
                      validator: (value) => FormValidatorUtils.textValidator(value,
                          isRequired: true
                      ),),
                    const SizedBox(height: 16,),
                    CustomTextField(
                      label: 'إسم المحول',
                      hint: 'إدخل الإسم',
                      controller: _nameController,
                      validator: (value) => FormValidatorUtils.textValidator(value,
                          isRequired: true
                      ),),
                    const SizedBox(height: 16,),
                    CustomTextField(
                      label: 'رقم الإعلان (الطلب)',
                      hint: 'رقم الإعلان (الطلب)',
                      controller: _numberRequestController,
                      keyboardType: TextInputType.number,
                      validator: (value) => FormValidatorUtils.textValidator(value,
                          isRequired: true
                      ),),
                    const SizedBox(height: 16,),
                    CustomTextField(
                      label: 'ملاحظات',
                      hint: 'ملاحظات',
                      controller: _noteController,
                      maxLines: 3,
                      maxLength: 500,
                     ),
                    const SizedBox(height: 16,),
                    AddImageWidget(
                        height: SizeConfig.heightResponsive(0.20),
                        file: _appCommissionProvider.invoiceTransferBankImageSelected,
                        onTap: () async {
                          ImagePickerBottomSheet.show(context, (picked) {
                            if (picked != null) {
                              _appCommissionProvider.changeInvoiceTransferBankImage(picked);
                            }
                          });
                        },
                        deleteImage : () {
                          _appCommissionProvider.changeInvoiceTransferBankImage(null);
                        }
                    ),
                    const SizedBox(height: 30,),
                    CustomButton(
                      primaryColor:AppColor.primaryColor,
                      txtSize: SizeConfig.widthResponsive(0.05),
                      loading: _appCommissionProvider.isLoading,
                      onTap: () async {
                        await _execute(context, _appCommissionProvider);
                      },
                      label: 'إرسال',
                    ),
                    const SizedBox(height: 30,),

                  ],
                ),
              ),
            ],
          )),
    );
  }

  Future<void> _execute(BuildContext context, AppCommissionProvider myProvider) async {
    Helper.dismissKeyBoard();

    bool myValid = _formKey.currentState!.validate();
    if (myValid) {

      if(myProvider.invoiceTransferBankImageSelected == null || myProvider.invoiceTransferBankImageSelected!.path.isEmpty){
        ToastHelper.showInfo('الرجاء إختيار صورة الإيصال');
        return;
      }

      if(! await ConnectionUtils.hasInternetConnection()){
        DialogUtils().showNoInternetDialog(context);
        return;
      }

      await myProvider.payAppCommission(context,{
        'amount' : _amountController.text,
        'date' : _dateController.text,
        'nameTransfer' : _nameController.text,
        'numberRequest' : _numberRequestController.text,
        'notes' : _noteController.text,
      });
    }
  }

}
