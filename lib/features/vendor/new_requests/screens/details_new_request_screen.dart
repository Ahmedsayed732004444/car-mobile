import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_mediator_mobile/core/providers/vendors/new_request_vendor_provider.dart';
import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
import 'package:car_mediator_mobile/widgets/container_fields_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/data_sources/local/secure_storage.dart';
import '../../../../core/data_sources/remote/api_path.dart';
import '../../../../core/providers/notification_badge_provider.dart';
import '../../../../core/utils/date_parser_utils.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/utils/utils.dart';
import '../../../../widgets/components.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_loading.dart';
import '../../../../widgets/item_table_widget.dart';
import '../widgets/build_response_request_bottom_heet.dart';

class DetailsNewRequestScreen extends StatefulWidget {
  const DetailsNewRequestScreen({super.key, required this.requestId});
  final int requestId;

  @override
  _DetailsNewRequestScreenState createState() => _DetailsNewRequestScreenState();
}

class _DetailsNewRequestScreenState extends State<DetailsNewRequestScreen> {

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      context.read<NotificationBadgeProvider>().markEntityRead(section: 'customer_requests', entityId: widget.requestId);
      final provider = Provider.of<NewRequestVendorProvider>(context, listen: false);
      await provider.detailsNewRequests(requestId: widget.requestId);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('تفاصيل الطلب : '+ ' ${Utils.numberFormatting(widget.requestId)}', style: txtMedium05,),
        leading: ArrowBackWidget(myContext: context),
        centerTitle: true,
        elevation: 0,
      ),
      body: Consumer<NewRequestVendorProvider>(
        builder: (context, provider, child) {

          if (provider.isLoading) {
            return const CustomLoading();
          }

          return RefreshIndicator(
            onRefresh: (){
              return provider.detailsNewRequests(requestId: widget.requestId);
            },
            child: ListView(
              padding: const EdgeInsets.all(12),
              shrinkWrap: true,
              children: [
                 ContainerFieldsWidget(
                    title: 'تفاصيل الطلب',
                    children: [
                      ItemTableWidget(
                        keyString: 'القسم',
                        value: provider.detailsNewRequestsModel?.catNameAr ?? '',
                      ),
                      ItemTableWidget(
                        keyString: 'مدينة العميل',
                        value: provider.detailsNewRequestsModel?.cityCustomerNameAr ?? '',
                      ),
                      ItemTableWidget(
                        keyString: 'نطاق المدن',
                        value: provider.detailsNewRequestsModel?.cities.join(" - ") ?? '',
                      ),
                      if(provider.detailsNewRequestsModel?.brandsNames.isNotEmpty ?? false)
                      ItemTableWidget(
                        keyString: 'الماركة',
                        value: provider.detailsNewRequestsModel?.brandsNames.join(" - ") ?? '',
                      ),

                      ItemTableWidget(
                        keyString: 'تاريخ الطلب',
                        value: DateParserUtils.getDateWithTimeFromString(provider.detailsNewRequestsModel?.requestDate ?? ''),
                      ),

                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: provider.detailsNewRequestsModel?.fields.map((e) => ItemTableWidget(keyString: e['key'], value: e['value'],)).toList() ?? [],
                      ),
                      ItemTableWidget(
                        keyString: 'تفاصيل الطلب',
                        value: provider.detailsNewRequestsModel?.description ?? '',
                      ),
                      const SizedBox(height: 10,),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: provider.detailsNewRequestsModel?.images.map((e) => FutureBuilder<String?>(
                          future: SecureStorage.getToken(),
                          builder: (context, snapshot) {
                            if (!snapshot.hasData) {
                              return const CustomLoading(radius: 18,);
                            }
                            final token = snapshot.data ?? '';

                            return CachedNetworkImage(
                              height: SizeConfig.heightResponsive(0.30),
                              width: SizeConfig.width,
                              imageUrl: "${ApiPath.uploadsPrivate}${e['image_name']}",
                              httpHeaders: {
                                "Authorization": "Bearer $token",
                              },
                              placeholder: (context, url) => const CustomLoading(radius: 18,),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                            );
                          },
                        )).toList() ?? [],
                      ),
                      const SizedBox(height: 20,),
                    ]
                ),

                const SizedBox(height: 20,),
              ],
            ),
          );
        },
      ),

      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 0,
          ),
          child: CustomButton(
            label: 'الرد على الطلب',
            txtSize: SizeConfig.widthResponsive(0.04),
            onTap: (){
              customBottomSheet(context,
                  child: const BuildResponseRequestBottomSheet(),
                  isDismissible: false);
            },
          ),
        ),
      ),
    );
  }
}