import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/providers/vendors/response_request_provider.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/utils/utils.dart';
import '../../../../widgets/custom_loading.dart';
import '../widgets/build_request_details_response_widget.dart';
import '../widgets/build_response_details_widget.dart';
import '../widgets/build_user_details_response_widget.dart';

class DetailsResponseRequestScreen extends StatefulWidget {
  const DetailsResponseRequestScreen({super.key, required this.responseId});
  final int responseId;

  @override
  _DetailsResponseRequestScreenState createState() =>
      _DetailsResponseRequestScreenState();
}

class _DetailsResponseRequestScreenState
    extends State<DetailsResponseRequestScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final provider =
          Provider.of<ResponseRequestProvider>(context, listen: false);
      await provider.detailsResponseRequest(responseId: widget.responseId);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'تفاصيل الرد : ' + ' ${Utils.numberFormatting(widget.responseId)}',
          style: txtMedium05,
        ),
        leading: ArrowBackWidget(myContext: context),
        centerTitle: true,
        elevation: 0,
      ),
      body: Consumer<ResponseRequestProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            return const CustomLoading();
          }

          return RefreshIndicator(
            onRefresh: () {
              return provider.detailsResponseRequest(
                  responseId: widget.responseId);
            },
            child: ListView(
              padding: const EdgeInsets.all(12),
              shrinkWrap: true,
              children: [
                BuildUserDetailsResponseWidget(model: provider.detailsResponseRequestModel,),
                const SizedBox(
                  height: 20,
                ),
                BuildRequestDetailsResponseWidget(
                  model: provider.detailsResponseRequestModel,
                ),
                const SizedBox(
                  height: 20,
                ),
                BuildResponseDetailsWidget(model: provider.detailsResponseRequestModel,),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        },
      ),

      // bottomNavigationBar: BottomAppBar(
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(
      //       horizontal: 0,
      //     ),
      //     child: CustomButton(
      //       label: 'الرد على الطلب',
      //       txtSize: SizeConfig.widthResponsive(0.04),
      //       onTap: (){
      //         customBottomSheet(context,
      //             child: const BuildResponseRequestBottomSheet(),
      //             isDismissible: false);
      //       },
      //     ),
      //   ),
      // ),
    );
  }
}
