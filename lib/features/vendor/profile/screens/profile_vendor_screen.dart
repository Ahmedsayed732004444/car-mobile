

import 'package:car_mediator_mobile/core/providers/vendors/profile_vendor_provider.dart';
import 'package:car_mediator_mobile/features/vendor/profile/screens/update_commercial_number_image_widget.dart';
import 'package:car_mediator_mobile/widgets/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/styles/styles.dart';
import '../../../../core/utils/date_parser_utils.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../widgets/arrow_back_widget.dart';
import '../widgets/build_manage_profile_widget.dart';

class ProfileVendorScreen extends StatefulWidget {
  const ProfileVendorScreen({super.key,});

  @override
  State<ProfileVendorScreen> createState() => _ProfileVendorScreenState();
}

class _ProfileVendorScreenState extends State<ProfileVendorScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameCompanyArController = TextEditingController();
  final phoneContactController = TextEditingController();
  final commercialRecordController = TextEditingController();
  final dateExpireCommercialRecordController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final provider = Provider.of<ProfileVendorProvider>(context, listen: false);
      await provider.getVendorProfile();
      initValuesProfile(provider);

    });
  }

  void initValuesProfile(ProfileVendorProvider provider){
    nameCompanyArController.text = provider.profileVendorModel?.companyNameAr ?? '';
    phoneContactController.text = provider.profileVendorModel?.phoneContact ?? '';
    commercialRecordController.text = provider.profileVendorModel?.commercialRecord ?? '';
    dateExpireCommercialRecordController.text = DateParserUtils.getDateFromString(provider.profileVendorModel?.dateExpireCommercialRecord);
    descriptionController.text = provider.profileVendorModel?.description ?? '';
    provider.changeIsHidePhoneContact(provider.profileVendorModel?.isHidePhoneContact ?? false);
  }

  @override
  void dispose() {
    super.dispose();
    nameCompanyArController.dispose();
    phoneContactController.dispose();
    commercialRecordController.dispose();
    dateExpireCommercialRecordController.dispose();
    descriptionController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final _provider = Provider.of<ProfileVendorProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('إدارة الحساب', style: txtBold05,),
        centerTitle: true,
        elevation: 0,
        leading: ArrowBackWidget(myContext: context),
      ),
      body: _provider.isLoadingRefresh ? const CustomLoading() : Form(
          key: _formKey,
          child: RefreshIndicator(
            onRefresh: () async {
              await _provider.getVendorProfile();
              initValuesProfile(_provider);
            },
            child: ListView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              children: [
                BuildManageProfileWidget(
                  formKey: _formKey,
                  provider: _provider,
                  nameCompanyArController: nameCompanyArController,
                  commercialRecordController: commercialRecordController,
                  dateExpireCommercialRecordController: dateExpireCommercialRecordController,
                  descriptionController: descriptionController,
                  phoneContactController: phoneContactController,
                ),
                const SizedBox(height: 30,),
                UpdateCommercialNumberImageWidget(provider: _provider,),
                const SizedBox(height: 20,),
              ],
            ),)),
    );
  }
}
