import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
import 'package:car_mediator_mobile/widgets/images/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/data_sources/remote/api_path.dart';
import '../../../../core/localization/app_language_provider.dart';
import '../../../../core/providers/orders/create_order_provider.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/size_config.dart';

class AppBarCreateOrderWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCreateOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        title: Consumer<CreateOrderProvider>(
        builder: (context, provider, child) {
          final categorySelectedModel = provider.categorySelectedModel;
          return ListTile(
            title: Text('القسم', style: txtLightRegular035,),
            subtitle: Text(
              categorySelectedModel != null ? categorySelectedModel.getName(context.read<AppLanguageProvider>().appLocal.languageCode) : '',
              style: txtSemiBold033,
            ),
            leading: CustomImageWidget(
              urlImage: ApiPath.categoriesIcon + (categorySelectedModel?.catIconPath ?? '') ,
              bgColor: AppColor.secondaryColor,
              color: AppColor.primaryColor,
              height: SizeConfig.widthResponsive(0.08),
              width: SizeConfig.widthResponsive(0.08),),
          );
        }),
        elevation: 0,
        titleSpacing: - SizeConfig.widthResponsive(0.04),
        leading: ArrowBackWidget(myContext: context),
        );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
