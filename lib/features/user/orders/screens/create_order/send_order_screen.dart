import 'package:car_mediator_mobile/core/utils/connection_utils.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/data_sources/local/secure_storage.dart';
import '../../../../../core/helpers/toast_helper.dart';
import '../../../../../core/localization/app_language_provider.dart';
import '../../../../../core/providers/auth_provider.dart';
import '../../../../../core/providers/cache_provider.dart';
import '../../../../../core/providers/orders/create_order_provider.dart';
import '../../../../../core/styles/styles.dart';
import '../../../../../core/utils/constants/colors_constants.dart';
import '../../../../../core/utils/constants/constants.dart';
import '../../../../../core/utils/dialogUtils.dart';
import '../../../../../core/utils/form_validator.dart';
import '../../../../../core/utils/size_config.dart';
import '../../../../../models/city_model.dart';
import '../../../../../widgets/card_container_widget.dart';
import '../../../../../widgets/components.dart';
import '../../../../../widgets/custom_button.dart';
import '../../../../../widgets/dropdown_search/city_dropdown_builder_multiselection_widget.dart';
import '../../../../../widgets/custom_loading.dart';
import '../../../../../widgets/section_label_widget.dart';
import '../../widgets/app_bar_create_order_widget.dart';
import '../../widgets/build_bottom_app_bar_send_order.dart';
import '../../widgets/confirm_pledge_dialog.dart';
import '../../widgets/details_order_widget.dart';
import '../../widgets/send_range_card.dart';

class SendOrderScreen extends StatefulWidget {
  const SendOrderScreen({super.key});

  @override
  State<SendOrderScreen> createState() => _SendOrderScreenState();
}

class _SendOrderScreenState extends State<SendOrderScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarCreateOrderWidget(),
        body: ListView(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          padding: const EdgeInsets.all(paddingConst),
          children:  [
            SectionLabelWidget(
              label: 'إرسال الطلب ومشاركته مع الشركات',
              fontSize: 0.04,
            ),
            SizedBox(
              height: 10,
            ),
            SendRangeCard(),
            SizedBox(
              height: 20,
            ),
            DetailsOrderWidget(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: 0,
              ),
              child: CustomButton(
                label: 'إرسال الطلب',
                txtSize: SizeConfig.widthResponsive(0.04),
                onTap: () async {
                  final _prov = context.read<CreateOrderProvider>();

                  if(!await SecureStorage.isLoggedIn()){
                    DialogUtils().showLoginDialog(context);
                    return;
                  }

                  if (!await ConnectionUtils.hasInternetConnection()) {
                    DialogUtils().showNoInternetDialog(context);
                    return;
                  }
                  if(_prov.selectedCitiesRequestList == null || _prov.selectedCitiesRequestList!.isEmpty){
                    ToastHelper.showInfo('يجب اختيار مدينة واحدة على الأقل لتحديد مناطق المتاجر.');
                    return;
                  }
                  customBottomSheet(context,
                      child: const BuildRequestOrderBottomSheet(),
                      isDismissible: false);
                },
              ),
            ),
          ],
        ),
     );
  }
}

class BuildRequestOrderBottomSheet extends StatefulWidget {
  const BuildRequestOrderBottomSheet({super.key});

  @override
  State<BuildRequestOrderBottomSheet> createState() =>
      _BuildRequestOrderBottomSheetState();
}

class _BuildRequestOrderBottomSheetState
    extends State<BuildRequestOrderBottomSheet> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<CreateOrderProvider>(context, listen: false)
          .checkEligibleVendors();
    });
  }

  @override
  Widget build(BuildContext context) {
    final _prov = Provider.of<CreateOrderProvider>(context);
    return Container(
      width: SizeConfig.width,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.close,
                  color: AppColor.primaryColor,
                )),
          ),
          SizedBox(
            height: SizeConfig.heightResponsive(0.02),
          ),
          if (_prov.isLoading)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CustomLoading(),
                SizedBox(
                  height: SizeConfig.heightResponsive(0.02),
                ),
                Text(
                  'جارٍ البحث عن عروض ...',
                  style: txtMedium04,
                ),
                SizedBox(
                  height: SizeConfig.heightResponsive(0.04),
                ),
              ],
            ),
          if (_prov.checkEligibleVendorsResult?.success ?? false)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${_prov.messageCheckEligibleVendorsResult}',
                  textAlign: TextAlign.center,
                  style: txtMedium04,
                ),
                SizedBox(
                  height: SizeConfig.heightResponsive(0.04),
                ),
                CustomButton(
                  label: 'إرسال الطلب',
                  txtSize: SizeConfig.widthResponsive(0.04),
                  onTap: () async {
                    if (!await ConnectionUtils.hasInternetConnection()) {
                      DialogUtils().showNoInternetDialog(context);
                      return;
                    }
                    if (_prov.categorySelectedModel?.id == 1) {
                      _prov.confirmOrderRequest(context);
                    } else {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (dialogContext) => ConfirmPledgeDialog(
                          onConfirm: () {
                            _prov.confirmOrderRequest(context);
                          },
                        ),
                      );
                    }
                  },
                ),
                SizedBox(
                  height: SizeConfig.heightResponsive(0.04),
                ),
              ],
            ),
          if ((_prov.checkEligibleVendorsResult?.success ?? false) == false &&
              _prov.isLoading == false)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${_prov.messageCheckEligibleVendorsResult}',
                  style: txtMedium04,
                ),
                SizedBox(
                  height: SizeConfig.heightResponsive(0.04),
                ),
                CustomButton(
                  label: 'إعادة الإرسال',
                  txtSize: SizeConfig.widthResponsive(0.04),
                  onTap: () async {
                   // Provider.of<AuthProvider>(context, listen: false).logout(context);
                     _prov.checkEligibleVendors();
                  },
                ),
                SizedBox(
                  height: SizeConfig.heightResponsive(0.04),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
