
import 'package:car_mediator_mobile/core/helpers/helpers.dart';
import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:car_mediator_mobile/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/data_sources/remote/api_endpoints.dart';
import '../../../../core/providers/auth_provider.dart';
import '../../../../core/providers/conversation_provider.dart';
import '../../../../core/providers/users/my_request_user_provider.dart';
import '../../../../core/utils/connection_utils.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/dialogUtils.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/utils/constants/assets_path.dart';
import '../../vendor_profile/screens/vendor_profile_screen.dart';
import '../../../../widgets/components.dart';
import '../../../../widgets/custom_empty_widget.dart';
import '../../../../widgets/custom_loading.dart';
import '../../../../widgets/images/custom_image.dart';
import '../../../../widgets/section_badge_widget.dart';
import '../../../shared/chat/screens/chat_screen.dart';

class UserConversationScreen extends StatefulWidget {
  const UserConversationScreen({super.key});

  @override
  _UserConversationScreenState createState() => _UserConversationScreenState();
}

class _UserConversationScreenState extends State<UserConversationScreen> {

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final provider = Provider.of<ConversationProvider>(context, listen: false);
      provider.resetPagination();
      await provider.getMyConversations(path: ApiEndpoints.userConversations);
    });
    
    _scrollController.addListener(() {
      final p = Provider.of<ConversationProvider>(context, listen: false);
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent &&
          !p.isLoading &&
          p.hasMore) {
        p.getMyConversations( path: ApiEndpoints.userConversations,loadMore: true);
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

    return Consumer<ConversationProvider>(
      builder: (context, provider, child) {

        if ( provider.conversationModelList.isEmpty && provider.isLoading) {
          return const CustomLoading();
        }

        return RefreshIndicator(
          onRefresh: () => provider.refreshGetMyConversations(ApiEndpoints.userConversations),
          child: provider.conversationModelList.isNotEmpty ? ListView.builder(
            controller: _scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: provider.conversationModelList.length + (provider.isLoading ? 1 : 0),
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
            itemBuilder: (context, index) {
              if (index < provider.conversationModelList.length) {
                final item = provider.conversationModelList[index];
                return Padding(padding: const EdgeInsets.only(bottom: 12),
                  child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    child: SectionBadgeWidget(
                      categoryKey: 'conversations',
                      entityId: item.conversationId,
                      offset: const Offset(12, 12),
                      child: ListTile(
                        onTap: () async {
                          if(! await ConnectionUtils.hasInternetConnection()){
                          DialogUtils().showNoInternetDialog(context);
                          return;
                          }
                          navigationPush(context, ChatScreen(
                            conversationId: item.conversationId ?? 0,
                            requestId: item.requestId ?? 0,
                            responseId: item.responseId ?? 0,
                            vendorId: item.vendorId ?? 0,
                            receiverName: item.receiverName ?? '',
                            receiverLogo: item.receiverLogo ?? '',
                            myUserId: context.read<AuthProvider>().currentUseModel?.id ?? 0,
                          ));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        leading: InkWell(
                          onTap: () {
                            if (item.vendorId != null && item.vendorId! > 0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VendorProfileScreen(vendorId: item.vendorId!),
                                ),
                              );
                            }
                          },
                          child: CustomImageWidget(
                            urlImage: item.receiverLogo,
                            width: SizeConfig.widthResponsive(0.15),
                            height: SizeConfig.widthResponsive(0.15),
                            radius: 60,
                            assetDefaultPath: AssetsPath.logo,
                          ),
                        ),
                        title: Text('${item.receiverName}', style: txtSemiBold035,),
                        subtitle: Text('رقم الطلب : ${Utils.numberFormatting(item.requestId)}'),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded, color: AppColor.primaryColor, size: 18,),
                      ),
                    ),
                  ),);
              } else {
                return const Padding(padding: EdgeInsets.only(bottom: 10),
                  child: CustomLoading(radius: 18,),
                );
              }
            },
          ) : const CustomEmptyWidget(label: 'لا توجد محادثات للعرض حالياً',),);
      },
    );
  }
}

