

import 'package:car_mediator_mobile/core/providers/vendors/profile_vendor_provider.dart';
import 'package:car_mediator_mobile/features/vendor/profile/screens/update_commercial_number_image_widget.dart';
import 'package:car_mediator_mobile/widgets/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/users/profile_user_provider.dart';
import '../../../../core/styles/styles.dart';
import '../../../../core/utils/date_parser_utils.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../widgets/arrow_back_widget.dart';
import '../widgets/build_manage_profile_user_widget.dart';

class ProfileVendorScreen extends StatefulWidget {
  const ProfileVendorScreen({super.key,});

  @override
  State<ProfileVendorScreen> createState() => _ProfileVendorScreenState();
}

class _ProfileVendorScreenState extends State<ProfileVendorScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final provider = Provider.of<ProfileUserProvider>(context, listen: false);
      await provider.getUserProfile();
      initValuesProfile(provider);

    });
  }

  void initValuesProfile(ProfileUserProvider provider){
    nameController.text = provider.profileUserModel?.name ?? '';
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final _provider = Provider.of<ProfileUserProvider>(context);

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
              await _provider.getUserProfile();
              initValuesProfile(_provider);
            },
            child: ListView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              children: [
                BuildManageProfileUserWidget(
                  formKey: _formKey,
                  provider: _provider,
                  nameController: nameController,
                ),
                const SizedBox(height: 30,),

                const SizedBox(height: 20,),
              ],
            ),)),
    );
  }
}
