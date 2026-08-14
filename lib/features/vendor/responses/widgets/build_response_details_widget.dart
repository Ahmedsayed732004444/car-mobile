
import 'package:flutter/material.dart';

import '../../../../core/utils/constants/enumeration.dart';
import '../../../../core/utils/date_parser_utils.dart';
import '../../../../core/utils/utils.dart';
import '../../../../models/response_request_model.dart';
import '../../../../widgets/container_fields_widget.dart';
import '../../../../widgets/item_table_widget.dart';

class BuildResponseDetailsWidget extends StatelessWidget {
  const BuildResponseDetailsWidget({super.key, required this.model});
  final ResponseRequestModel? model;

  @override
  Widget build(BuildContext context) {
    return ContainerFieldsWidget(title: 'تفاصيل الطلب', children: [

      ItemTableWidget(
        keyString: 'رقم الرد',
        value:
        Utils.numberFormatting(model?.responseId ?? 0),
      ),

      ItemTableWidget(
        keyString: 'تاريخ الرد',
        value: DateParserUtils.getDateWithTimeFromString(
            model?.responseDate ??
                ''),
      ),

      ItemTableWidget(
        keyString: 'حالة الرد',
        value: (model?.responseStatus ?? '') ==
            ResponseRequestAvailabilityEnum.available.name
            ? 'متوفر'
            : (model?.responseStatus ?? '') ==
            ResponseRequestAvailabilityEnum
                .available_with_difference.name
            ? 'متوفر مع إختلاف'
            : 'لم يتم الرد',
      ),

      ItemTableWidget(
        keyString: 'ملاحظات الرد',
        value:
        model?.noteResponse ?? '',
      ),
      ItemTableWidget(
        keyString: 'مدة الضمان',
        value:
        model?.warrantyResponse ?? 'لا يوجد',
      ),
      ItemTableWidget(
        keyString: 'السعر',
        value:
        '${model?.priceResponse ?? 0}  ر.س',
      ),

      const SizedBox(
        height: 10,
      ),
    ]);
  }
}
