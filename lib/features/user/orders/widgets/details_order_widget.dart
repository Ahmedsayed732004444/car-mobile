import 'dart:io';

import 'package:car_mediator_mobile/widgets/images/custom_image.dart';
import 'package:car_mediator_mobile/widgets/item_table_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/localization/app_language_provider.dart';
import '../../../../core/providers/cache_provider.dart';
import '../../../../core/providers/dynamic_form_provider.dart';
import '../../../../core/providers/orders/create_order_provider.dart';
import '../../../../core/styles/styles.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../widgets/card_container_widget.dart';

class DetailsOrderWidget extends StatelessWidget {
  const DetailsOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final _isArabic = context.read<AppLanguageProvider>().isArabic;
    final _cacheProvider = context.read<CacheProvider>();
    final _createOrderProvider = context.read<CreateOrderProvider>();
    final _dynamicFormProvider = context.read<DynamicFormProvider>();

    return CardContainerWidget(
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          'تفاصيل الطلب',
          style: txtBold04,
        ),
        const SizedBox(
          height: 20,
        ),
        ItemTableWidget(
          keyString: 'وصف الطلب',
          value: _createOrderProvider.descriptionRequest ?? '',
        ),
        if (_createOrderProvider.isCategoryHasBrand)
          ItemTableWidget(
            keyString: 'الموديل',
            value: _createOrderProvider.selectedBrandsList.length == _cacheProvider.brandsCarsList.length &&
                    _cacheProvider.brandsCarsList.isNotEmpty
                ? 'جميع الشركات'
                : (_createOrderProvider.selectedBrandsList.isNotEmpty
                    ? _createOrderProvider.selectedBrandsList
                        .map((e) => (_isArabic ? e.brandCarNameAr : e.brandCarNameEn) ?? '')
                        .join(" - ")
                    : (_isArabic
                        ? _createOrderProvider.brandSelectedModel?.brandCarNameAr
                        : _createOrderProvider.brandSelectedModel?.brandCarNameEn)),
          ),
        ItemTableWidget(
          keyString: 'مدينتك',
          value: _isArabic
              ? _createOrderProvider.myCitySelectedModel?.cityNameAr
              : _createOrderProvider.myCitySelectedModel?.cityNameEn,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: _dynamicFormProvider.controllersMap.entries.map((entry) {
            return ItemTableWidget(
              keyString: _dynamicFormProvider.getLabelName(context, entry.key),
              value: _dynamicFormProvider.getValue(entry.key),
            );
          }).toList(),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: _dynamicFormProvider.valuesMap.entries.map((entry) {
            return (_dynamicFormProvider.isFileByFieldName(context, entry.key))
                ? Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CustomImageWidget(
                  fileImage: File(entry.value),
                  height: SizeConfig.heightResponsive(0.20),
                  width: SizeConfig.widthResponsive(0.50),
                ),
              ),
            )
                : ItemTableWidget(
                    keyString:
                        _dynamicFormProvider.getLabelName(context, entry.key),
                    value: entry.value,
                  );
          }).toList(),
        ),
      ],
    );
  }
}
