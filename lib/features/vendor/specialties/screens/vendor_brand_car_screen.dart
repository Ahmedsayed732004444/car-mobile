import 'package:car_mediator_mobile/widgets/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/helpers/helpers.dart';
import '../../../../core/providers/vendors/specialty_vendor_provider.dart';
import '../../../../core/styles/styles.dart';
import '../../../../core/utils/connection_utils.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/dialogUtils.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../models/category_model.dart';
import '../../../../widgets/arrow_back_widget.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/dropdown_search/categories_dropdown_search.dart';
import '../../../../widgets/icon_comp.dart';

class VendorBrandCarScreen extends StatefulWidget {
  const VendorBrandCarScreen({super.key});

  @override
  State<VendorBrandCarScreen> createState() =>
      _VendorBrandCarScreenState();
}

class _VendorBrandCarScreenState extends State<VendorBrandCarScreen> {

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<SpecialtyVendorProvider>(context, listen: false)
          .getVendorBrandsCar(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<SpecialtyVendorProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'الخدمات',
          style: txtBold05,
        ),
        centerTitle: true,
        elevation: 0,
        leading: ArrowBackWidget(myContext: context),
      ),
      body: _provider.isLoadingRefresh
          ? const CustomLoading()
          : Form(
        key: _formKey,
        child: RefreshIndicator(
          onRefresh: (){
            return _provider.getVendorBrandsCar(context);
          },
          child: ListView(
            physics:  AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            children: [
              Text(
                  'إختر الخدمات التي تقدمها ... لتلقي طلبات حسب تخصصك و خدماتك.'),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const IconComponent(
                    icon: Icon(
                      Icons.miscellaneous_services,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CategoriesDropdownSearch(
                      filled: true,
                      fillColor: AppColor.secondaryColor,
                      selectedCategories: _provider.selectedCategoriesList,
                      onChanged: (List<CategoryModel>? selectedItems) {
                        _provider.changeCategories(selectedItems);
                      },
                    ),
                  )
                ],
              ),
              // SizedBox(
              //   height: SizeConfig.heightResponsive(0.04),
              // ),
              // CustomButton(
              //   primaryColor: AppColor.primaryColor,
              //   txtSize: SizeConfig.widthResponsive(0.05),
              //   loading: _provider.isLoading,
              //   onTap: () async {
              //     DialogUtils().showConfirmDialog(
              //         context,
              //         message: 'هل أنت متأكد من حفظ هذه التغيرات',
              //         confirm: () async {
              //           await _execute(context, _provider);
              //         }
              //     );
              //   },
              //   label: 'حفظ',
              // ),
            ],
          ),),
      ),
    );
  }

  Future<void> _execute(BuildContext context, SpecialtyVendorProvider provider)async {
    Helper.dismissKeyBoard();

    bool myValid = _formKey.currentState!.validate();
    if (myValid) {

      if(! await ConnectionUtils.hasInternetConnection()){
        DialogUtils().showNoInternetDialog(context);
        return;
      }

      await provider.updateCategorySpecialtyVendor();
    }
  }
}
