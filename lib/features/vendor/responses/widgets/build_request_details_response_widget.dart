
import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/data_sources/local/secure_storage.dart';
import '../../../../core/data_sources/remote/api_path.dart';
import '../../../../core/utils/date_parser_utils.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../models/response_request_model.dart';
import '../../../../widgets/container_fields_widget.dart';
import '../../../../widgets/custom_loading.dart';
import '../../../../widgets/item_table_widget.dart';
import '../../../../widgets/request_status_widget.dart';

class BuildRequestDetailsResponseWidget extends StatelessWidget {
  const BuildRequestDetailsResponseWidget({super.key, required this.model});
  final ResponseRequestModel? model;

  @override
  Widget build(BuildContext context) {
    return ContainerFieldsWidget(title: 'تفاصيل الطلب', children: [
      Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('حالة الطلب :', style: txtBold04,),
          const SizedBox(width: 10,),
          RequestStatusWidget(
            status:
            model?.requestStatus ??
                '',
          ),
        ],
      ),

      const SizedBox(
        height: 20,
      ),
      ItemTableWidget(
        keyString: 'القسم',
        value:
        model?.catNameAr ?? '',
      ),
      ItemTableWidget(
        keyString: 'مدينة العميل',
        value: model?.cityCustomerNameAr ??
            '',
      ),
      ItemTableWidget(
        keyString: 'نطاق المدن',
        value: model?.cities
            .join(" - ") ??
            '',
      ),
      if (model?.brandsNames
          .isNotEmpty ??
          false)
        ItemTableWidget(
          keyString: 'الماركة',
          value: model?.brandsNames
              .join(" - ") ??
              '',
        ),
      ItemTableWidget(
        keyString: 'تاريخ الطلب',
        value: DateParserUtils.getDateWithTimeFromString(
            model?.requestDate ??
                ''),
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: model?.fields
            .map((e) => ItemTableWidget(
          keyString: e['key'],
          value: e['value'],
        ))
            .toList() ??
            [],
      ),
      ItemTableWidget(
        keyString: 'تفاصيل الطلب',
        value:
        model?.description ?? '',
      ),
      const SizedBox(
        height: 10,
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: model?.images
            .map((e) => FutureBuilder<String?>(
          future: SecureStorage.getToken(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const CustomLoading(
                radius: 18,
              );
            }
            final token = snapshot.data ?? '';

            return CachedNetworkImage(
              height: SizeConfig.heightResponsive(0.30),
              width: SizeConfig.width,
              imageUrl:
              "${ApiPath.uploadsPrivate}${e['image_name']}",
              httpHeaders: {
                "Authorization": "Bearer $token",
              },
              placeholder: (context, url) =>
              const CustomLoading(
                radius: 18,
              ),
              errorWidget: (context, url, error) =>
              const Icon(Icons.error),
            );
          },
        ))
            .toList() ??
            [],
      ),
      const SizedBox(
        height: 20,
      ),
    ]);
  }
}
