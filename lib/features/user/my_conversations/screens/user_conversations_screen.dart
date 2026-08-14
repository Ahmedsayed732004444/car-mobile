
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
import '../../../../widgets/components.dart';
import '../../../../widgets/custom_empty_widget.dart';
import '../../../../widgets/custom_loading.dart';
import '../../../../widgets/images/custom_image.dart';
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
                return Padding(padding: const EdgeInsets.only(bottom: 12),
                  child: Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    child: ListTile(
                      onTap: () async {
                        if(! await ConnectionUtils.hasInternetConnection()){
                        DialogUtils().showNoInternetDialog(context);
                        return;
                        }
                        navigationPush(context, ChatScreen(
                          conversationId: provider.conversationModelList[index].conversationId ?? 0,
                          requestId: provider.conversationModelList[index].requestId ?? 0,
                          responseId: provider.conversationModelList[index].responseId ?? 0,
                          vendorId: provider.conversationModelList[index].vendorId ?? 0,
                          receiverName: provider.conversationModelList[index].receiverName ?? '',
                          receiverLogo: provider.conversationModelList[index].receiverLogo ?? '',
                          myUserId: context.read<AuthProvider>().currentUseModel?.id ?? 0,
                        ));
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      leading: CustomImageWidget(
                        urlImage: provider.conversationModelList[index].receiverLogo,
                        width: SizeConfig.widthResponsive(0.15),
                        height: SizeConfig.widthResponsive(0.15),
                        radius: 60,
                      ),
                      title: Text('${provider.conversationModelList[index].receiverName}', style: txtSemiBold035,),
                      subtitle: Text('رقم الطلب : ${Utils.numberFormatting(provider.conversationModelList[index].requestId)}'),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded, color: AppColor.primaryColor, size: 18,),
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

