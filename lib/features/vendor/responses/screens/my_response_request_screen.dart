import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/providers/vendors/response_request_provider.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../widgets/custom_loading.dart';
import '../../../../widgets/vendor/response_vendor_card.dart';

class MyResponseRequestScreen extends StatefulWidget {
  const MyResponseRequestScreen({super.key});

  @override
  _MyResponseRequestScreenState createState() => _MyResponseRequestScreenState();
}

class _MyResponseRequestScreenState extends State<MyResponseRequestScreen> {

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final provider = Provider.of<ResponseRequestProvider>(context, listen: false);
      provider.resetPagination();
      await provider.getMyResponseRequests();
    });

    _scrollController.addListener(() {
      final p = Provider.of<ResponseRequestProvider>(context, listen: false);
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent &&
          !p.isLoading &&
          p.hasMore) {
        p.getMyResponseRequests(loadMore: true);
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
        title: Text("الردود والمحادثات", style: txtMedium05,),
        leading: ArrowBackWidget(myContext: context),
        centerTitle: true,
        elevation: 0,
      ),
      body: Consumer<ResponseRequestProvider>(
        builder: (context, provider, child) {

          if ( provider.responseRequestModelList.isEmpty && provider.isLoading) {
            return const CustomLoading();
          }

          return RefreshIndicator(
            onRefresh: provider.refreshGetMyResponseRequests,
            child: ListView.builder(
              controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: provider.responseRequestModelList.length + (provider.isLoading ? 1 : 0),
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
              itemBuilder: (context, index) {
                if (index < provider.responseRequestModelList.length) {
                  return Padding(padding: const EdgeInsets.only(bottom: 12),
                    child: ResponseVendorCard(model: provider.responseRequestModelList[index],),);
                } else {
                  return const Padding(padding: EdgeInsets.only(bottom: 10),
                    child: CustomLoading(radius: 18,),
                  );
                }
              },
            ),);
        },
      ),
    );
  }
}

