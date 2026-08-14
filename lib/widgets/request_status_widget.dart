import 'package:car_mediator_mobile/core/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../core/utils/constants/enumeration.dart';

class RequestStatusWidget extends StatelessWidget {
  const RequestStatusWidget({super.key, required this.status});
  final String status;

  @override
  Widget build(BuildContext context) {
    if(status == RequestCustomerStatusEnum.open.name) {
      return const _BuildStatus(status: 'مفتوح', color: Color(0xff2196F3),);
    }

    if(status == RequestCustomerStatusEnum.closed.name) {
      return const _BuildStatus(status: 'مغلق', color: Color(0xff9E9E9E),);
    }

    if(status == RequestCustomerStatusEnum.canceled.name) {
      return const _BuildStatus(status: 'ملغي', color: Color(0xffF44336),);
    }

    if(status == RequestCustomerStatusEnum.completed.name) {
      return const _BuildStatus(status: 'مكتمل', color: Color(0xff4CAF50),);
    }

    return const SizedBox.shrink();
  }
}

class _BuildStatus extends StatelessWidget {
  const _BuildStatus({super.key, required this.status, required this.color});
  final String status;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 20,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color.withOpacity(0.1),
      ),
      child: Text(
        status,
        style: TextStyle(
            fontSize: SizeConfig.widthResponsive(0.04),
            fontWeight: FontWeight.w600,
            color: color),
      ),
    );
  }
}

