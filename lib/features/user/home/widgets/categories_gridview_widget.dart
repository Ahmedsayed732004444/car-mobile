import 'package:car_mediator_mobile/core/localization/app_language_provider.dart';
import 'package:car_mediator_mobile/features/user/orders/screens/create_order/create_order_screen.dart';
import 'package:car_mediator_mobile/widgets/components.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/data_sources/remote/api_path.dart';
import '../../../../core/providers/cache_provider.dart';
import '../../../../core/providers/orders/create_order_provider.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/constants/constants.dart';
import '../../../../core/utils/constants/enumeration.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../models/category_model.dart';
import '../../../../widgets/images/custom_image.dart';
import '../../../../widgets/ontap_container_widget.dart';

class CategoriesGridviewWidget extends StatelessWidget {
  const CategoriesGridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<CacheProvider, List<CategoryModel>>(
      selector: (context, cacheProvider) => cacheProvider.categoriesList,
      builder: (context, categoriesList, child) => GridView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: paddingHorizontalConst,),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: SizeConfig.heightResponsive(0.16),
             crossAxisSpacing: 5,
             mainAxisSpacing: 5,
          ),
          itemCount: categoriesList.length ?? 0,
          itemBuilder: (BuildContext ctx, index) {
            final categoryModel = categoriesList[index];
            return _CategoryItem(
              model: categoryModel,
              index: index,
            );
          }),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final CategoryModel model;
  final int index;

  const _CategoryItem({
    required this.model,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {

    return OnTapContainerWidget(
      onTap: () {
        if(model.active == CategoryStatusEnum.Soon.name){
          return;
        }
        final _provider = context.read<CreateOrderProvider>();
        _provider.setCategorySelected(model);
        _provider.setIsCategoryHasBrand(context, model.id);
        navigationPush(context, CreateOrderScreen(customFieldsList: context.read<CacheProvider>().getCustomFieldsByCategoryId(model.id),));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(padding: EdgeInsets.only(left: SizeConfig.widthResponsive(0.03)), child: Text(model.active == CategoryStatusEnum.Soon.name ? 'قريـبـاً' : '', style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), fontWeight: FontWeight.bold, color: Colors.grey),)),
          ),
          CircleAvatar(
            radius: SizeConfig.widthResponsive(0.06),
            backgroundColor: Colors.white,
            child: CustomImageWidget(
              urlImage: ApiPath.categoriesIcon + (model.catIconPath ?? ''),
              height: SizeConfig.widthResponsive(0.06),
              width: SizeConfig.widthResponsive(0.06),
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            model.getName(context.read<AppLanguageProvider>().appLocal.languageCode),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: SizeConfig.widthResponsive(0.03),
              fontWeight: FontWeight.w700,
              color: AppColor.textColor,
            ),
          ),
        ],
      )
    );
  }
}

