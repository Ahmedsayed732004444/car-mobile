


  import 'package:car_mediator_mobile/core/utils/dialogUtils.dart';
import 'package:car_mediator_mobile/widgets/container_fields_widget.dart';
import 'package:car_mediator_mobile/widgets/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/users/my_request_user_provider.dart';
import '../../../../core/utils/constants/enumeration.dart';

class StatusMyRequestWidget extends StatelessWidget {
  const StatusMyRequestWidget({super.key, required this.status, this.requestId});
  final String status;
  final int? requestId;

  @override
  Widget build(BuildContext context) {
    return Consumer<MyRequestUserProvider>(
      builder: (context, provider, child) {

        return ContainerFieldsWidget(title: 'حالة الطلب', children: provider.isLoadingUpdate ? [const CustomLoading()] : RequestCustomerStatusEnum.values.map((status) {
          final isSelected = provider.statusMyRequestSelected == status.name;

          return GestureDetector(
            onTap: () {
              DialogUtils().showConfirmDialog(context, message: 'تأكيد حالة الطلب', confirm: (){
               provider.updateResponseRequest(body: {
                 'id': requestId ?? provider.detailsMyRequestModel?.requestId ?? 0,
                 'status': status.name,
               }, status: status.name);
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isSelected ? status.color : Colors.grey.shade300,
                  width: isSelected ? 2 : 1,
                ),
                color: isSelected ? status.color.withOpacity(0.1) : Colors.white,
              ),
              child: Row(
                children: [
                  Radio<String>(
                    value: status.name,
                    groupValue: provider.statusMyRequestSelected,
                    onChanged: (value) {
                      DialogUtils().showConfirmDialog(context, message: 'تأكيد حالة الطلب', confirm: (){
                        provider.updateResponseRequest(body: {
                          'id': requestId ?? provider.detailsMyRequestModel?.requestId ?? 0,
                          'status': status.name,
                        }, status: status.name);
                      });
                    },
                    activeColor: status.color,
                  ),
                  Icon(status.icon, color: status.color),
                  const SizedBox(width: 10),
                  Text(
                    status.label,
                    style: TextStyle(
                      fontSize: 16,
                      color: isSelected ? status.color : Colors.black87,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList());
      },
    );
  }
}


// class StatusRadioButtons extends StatefulWidget {
//   final RequestCustomerStatusEnum? initialValue;
//   final Function(RequestCustomerStatusEnum)? onChanged;
//
//   const StatusRadioButtons({super.key, this.initialValue, this.onChanged});
//
//   @override
//   _StatusRadioButtonsState createState() => _StatusRadioButtonsState();
// }
//
// class _StatusRadioButtonsState extends State<StatusRadioButtons> {
//   RequestCustomerStatusEnum? selected;
//
//   @override
//   void initState() {
//     super.initState();
//     selected = widget.initialValue ?? RequestCustomerStatusEnum.open;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: RequestCustomerStatusEnum.values.map((status) {
//         final isSelected = selected == status;
//
//         return GestureDetector(
//           onTap: () {
//             setState(() => selected = status);
//             widget.onChanged?.call(status);
//           },
//           child: Container(
//             margin: const EdgeInsets.symmetric(vertical: 6),
//             padding: const EdgeInsets.all(12),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(
//                 color: isSelected ? status.color : Colors.grey.shade300,
//                 width: isSelected ? 2 : 1,
//               ),
//               color: isSelected ? status.color.withOpacity(0.1) : Colors.white,
//             ),
//             child: Row(
//               children: [
//                 Radio<RequestCustomerStatusEnum>(
//                   value: status,
//                   groupValue: selected,
//                   onChanged: (value) {
//                     setState(() => selected = value);
//                     widget.onChanged?.call(value!);
//                   },
//                   activeColor: status.color,
//                 ),
//                 Icon(status.icon, color: status.color),
//                 const SizedBox(width: 10),
//                 Text(
//                   status.label,
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: isSelected ? status.color : Colors.black87,
//                     fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       }).toList(),
//     );
//   }
// }
