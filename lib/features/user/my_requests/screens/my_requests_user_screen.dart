
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/users/my_request_user_provider.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../widgets/custom_empty_widget.dart';
import '../../../../widgets/custom_loading.dart';
import '../widgets/my_request_user_card.dart';

class MyRequestUserScreen extends StatefulWidget {
  const MyRequestUserScreen({super.key});

  @override
  _MyRequestUserScreenState createState() => _MyRequestUserScreenState();
}

class _MyRequestUserScreenState extends State<MyRequestUserScreen> {

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final provider = Provider.of<MyRequestUserProvider>(context, listen: false);
      provider.resetPagination();
      await provider.getMyRequests();
    });

    _scrollController.addListener(() {
      final p = Provider.of<MyRequestUserProvider>(context, listen: false);
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent &&
          !p.isLoading &&
          p.hasMore) {
        p.getMyRequests(loadMore: true);
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

    return Consumer<MyRequestUserProvider>(
      builder: (context, provider, child) {

        if ( provider.requestModelList.isEmpty && provider.isLoading) {
          return const CustomLoading();
        }

        return RefreshIndicator(
          onRefresh: provider.refreshGetMyRequests,
          child: provider.requestModelList.isNotEmpty ? ListView.builder(
            controller: _scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: provider.requestModelList.length + (provider.isLoading ? 1 : 0),
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
            itemBuilder: (context, index) {
              if (index < provider.requestModelList.length) {
                return Padding(padding: const EdgeInsets.only(bottom: 12),
                  child: MyRequestUserCard(model: provider.requestModelList[index],),);
              } else {
                return const Padding(padding: EdgeInsets.only(bottom: 10),
                  child: CustomLoading(radius: 18,),
                );
              }
            },
          ) : const CustomEmptyWidget(label: 'لا توجد طلبات للعرض حالياً',),);
      },
    );
  }
}

