
import 'package:car_mediator_mobile/widgets/components.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/users/my_request_user_provider.dart';
import '../../../../core/providers/users/responses_my_request_provider.dart';
import '../../../../core/styles/styles.dart';
import '../../../../core/utils/constants/assets_path.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/constants/enumeration.dart';
import '../../../../core/utils/date_parser_utils.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/utils/utils.dart';
import '../../../../models/response_request_model.dart';
import '../../../../widgets/arrow_back_widget.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_empty_widget.dart';
import '../../../../widgets/custom_loading.dart';
import '../../../../widgets/images/custom_image.dart';
import 'details_response_my_request_screen.dart';

class ResponsesMyRequestScreen extends StatefulWidget {
  const ResponsesMyRequestScreen({super.key, required this.requestId});
  final int requestId;

  @override
  _ResponsesMyRequestScreenState createState() => _ResponsesMyRequestScreenState();
}

class _ResponsesMyRequestScreenState extends State<ResponsesMyRequestScreen> {

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      context.read<NotificationBadgeProvider>().markEntityRead(section: 'company_responses', entityId: widget.requestId);
      final provider = Provider.of<ResponsesMyRequestProvider>(context, listen: false);
      provider.resetPagination();
      await provider.getResponsesMyRequest(requestId: widget.requestId);
    });

    _scrollController.addListener(() {
      final p = Provider.of<ResponsesMyRequestProvider>(context, listen: false);
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent &&
          !p.isLoading &&
          p.hasMore) {
        p.getResponsesMyRequest(loadMore: true, requestId: widget.requestId);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('ردود الطلب :  ${widget.requestId}', style: txtMedium05,),
          leading: ArrowBackWidget(myContext: context),
          centerTitle: true,
          elevation: 0,
        ),
        body: Consumer<ResponsesMyRequestProvider>(
          builder: (context, provider, child) {

            if ( provider.responseRequestModelList.isEmpty && provider.isLoading) {
              return const CustomLoading();
            }

            return RefreshIndicator(
              onRefresh: (){
                return provider.refreshGetResponsesMyRequest(requestId: widget.requestId);
              },
              child: provider.responseRequestModelList.isNotEmpty ? ListView.builder(
                controller: _scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: provider.responseRequestModelList.length + (provider.isLoading ? 1 : 0),
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
                itemBuilder: (context, index) {
                  if (index < provider.responseRequestModelList.length) {
                    return Padding(padding: const EdgeInsets.only(bottom: 12),
                      child: _ResponseMyRequestCard(model: provider.responseRequestModelList[index],),);
                  } else {
                    return const Padding(padding: EdgeInsets.only(bottom: 10),
                      child: CustomLoading(radius: 18,),
                    );
                  }
                },
              ) : const CustomEmptyWidget(label: 'لا توجد ردود للعرض حاليا',),);
          },
        )
    );

  }
}

class _ResponseMyRequestCard extends StatelessWidget {
  const _ResponseMyRequestCard({super.key, required this.model});
  final ResponseRequestModel model;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'رقم الرد :  ${Utils.numberFormatting(model.responseId)}',
                        style: txtMedium04,
                      ),
                    )),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(DateParserUtils.timeAgoFormat(model.responseDate)),
                    )),
              ],
            ),
            const Divider(
              color: AppColor.grey200,
            ),
            const SizedBox(height: 5,),
            Row(
              children: [
                CustomImageWidget(
                  urlImage: model.vendorLogo,
                  width: SizeConfig.widthResponsive(0.20),
                  height: SizeConfig.widthResponsive(0.20),
                  assetDefaultPath: AssetsPath.user_image,
                ),
                const SizedBox(width: 10,),
                Expanded(child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('الشركة : ', style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), color: AppColor.greyColor, fontWeight: FontWeight.w500),),
                        const SizedBox(width: 5,),
                        Expanded(child: Text(model.companyNameAr, style: txtMedium04,),)
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('حالة الرد : ', style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), color: AppColor.greyColor, fontWeight: FontWeight.w500),),
                        const SizedBox(width: 5,),
                        Expanded(child: Text(model.responseStatus ==
                            ResponseRequestAvailabilityEnum.available.name
                            ? 'متوفر'
                            : model.responseStatus ==
                            ResponseRequestAvailabilityEnum
                                .available_with_difference.name
                            ? 'متوفر مع إختلاف'
                            : 'لم يتم الرد', style: txtMedium04,),)
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('السعر : ', style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), color: AppColor.greyColor, fontWeight: FontWeight.w500),),
                        const SizedBox(width: 5,),
                        Expanded(child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(Utils.numberFormatting(model.priceResponse), style: txtMedium04,),
                            const SizedBox(width: 5,),
                            Image.asset(AssetsPath.icon_riyal, width: 14, height: 14, color: AppColor.primaryColor)
                          ],
                        ))
                      ],
                    ),
                  ],
                )),
              ],
            ),

            if(model.warrantyResponse != null && model.warrantyResponse != '')
            Padding(padding: EdgeInsets.only(top: 12),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('الضمان : ', style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), color: AppColor.greyColor, fontWeight: FontWeight.w500),),
                const SizedBox(width: 5,),
                Expanded(child: Text(model.warrantyResponse, style: txtMedium04,),)
              ],
            ),),
            if(model.shippingRequestId != null && model.shippingRequestId != 0)
            Padding(padding: EdgeInsets.only(top: 12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('طلب الشحن : ', style: TextStyle(fontSize: SizeConfig.widthResponsive(0.04), color: AppColor.greyColor, fontWeight: FontWeight.w500),),
                  const SizedBox(width: 5,),
                  Expanded(child: Text('${model.shippingRequestStatus == StatusShippingRequestEnum.Pending.name ? 'قيد المعالجة' : 'تم الشحن'}', style: txtMedium04,),)
                ],
              ),),
            const SizedBox(height: 10,),
            CustomButton(
              label: 'تفاصيل الرد',
              txtSize: SizeConfig.widthResponsive(0.04),
              primaryColor: Colors.transparent,
              textColor: AppColor.primaryColor,
              borderColor: AppColor.primaryColor,
              bgOverlayColor: AppColor.primaryColor.withOpacity(0.08),
              onTap: () {
                navigationPush(context, DetailsResponseMyRequestScreen(responseId: model.responseId,));
              },
            )
          ]
        ),
      ),
    );
  }
}

