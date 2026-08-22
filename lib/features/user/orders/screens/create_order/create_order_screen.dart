
import 'package:car_mediator_mobile/features/user/orders/screens/create_order/send_order_screen.dart';
import 'package:car_mediator_mobile/models/custom_field_model.dart';
import 'package:car_mediator_mobile/widgets/components.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/providers/orders/create_order_provider.dart';
import '../../../../../core/utils/constants/constants.dart';
import '../../widgets/app_bar_create_order_widget.dart';
import '../../widgets/build_bottom_app_bar_create_order.dart';
import '../../widgets/form_create_order.dart';

import '../../widgets/confirm_pledge_dialog.dart';

class CreateOrderScreen extends StatefulWidget {
  const CreateOrderScreen({super.key, required this.customFieldsList});
  final List<CustomFieldModel> customFieldsList;

  @override
  State<CreateOrderScreen> createState() => _CreateOrderScreenState();
}

class _CreateOrderScreenState extends State<CreateOrderScreen> {
  final _formKey = GlobalKey<FormState>();
  final descriptionController = TextEditingController();
  final myCityController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    descriptionController.dispose();
    myCityController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _createOrderProvider = context.read<CreateOrderProvider>();

    return Scaffold(
        appBar: const AppBarCreateOrderWidget(),
        body: Form(
            key: _formKey,
            child: ListView(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              padding: const EdgeInsets.all(paddingConst),
              children: [
                FormCreateOrderWidget(
                  customFieldsList: widget.customFieldsList,
                  descriptionController: descriptionController,
                  myCityController: myCityController,
                ),
              ],
            )),
        bottomNavigationBar: BuildBottomAppBarCreateOrder(onTap: () {
          if (_formKey.currentState!.validate()) {
            _createOrderProvider.descriptionRequest = descriptionController.text.toString();
            
            if (_createOrderProvider.categorySelectedModel?.id == 1) {
              navigationPush(context, SendOrderScreen());
            } else {
              navigationPush(context, SendOrderScreen());
            }
          }
        }));
  }
}
