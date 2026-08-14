import 'package:car_mediator_mobile/core/providers/vendors/new_request_vendor_provider.dart';
import 'package:car_mediator_mobile/core/styles/styles.dart';
import 'package:car_mediator_mobile/widgets/arrow_back_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/size_config.dart';
import '../../../../widgets/custom_loading.dart';
import '../../../../widgets/vendor/request_vendor_card.dart';

class NewRequestScreen extends StatefulWidget {
  const NewRequestScreen({super.key});

  @override
  _NewRequestScreenState createState() => _NewRequestScreenState();
}

class _NewRequestScreenState extends State<NewRequestScreen> {

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final provider = Provider.of<NewRequestVendorProvider>(context, listen: false);
      provider.resetPagination();
      await provider.getAllNewRequests();
    });

    _scrollController.addListener(() {
      final p = Provider.of<NewRequestVendorProvider>(context, listen: false);
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent &&
          !p.isLoading &&
          p.hasMore) {
        p.getAllNewRequests(loadMore: true);
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
          title: Text("طلبات العملاء", style: txtMedium05,),
        leading: ArrowBackWidget(myContext: context),
        centerTitle: true,
        elevation: 0,
      ),
      body: Consumer<NewRequestVendorProvider>(
        builder: (context, provider, child) {

          if ( provider.requestEligibleVendorModelList.isEmpty && provider.isLoading) {
            return const CustomLoading();
          }

          return RefreshIndicator(
            onRefresh: provider.refreshGetAllNewRequests,
            child: ListView.builder(
            controller: _scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
            itemCount: provider.requestEligibleVendorModelList.length + (provider.isLoading ? 1 : 0),
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
            itemBuilder: (context, index) {
              if (index < provider.requestEligibleVendorModelList.length) {
                return Padding(padding: const EdgeInsets.only(bottom: 12),
                  child: RequestVendorCard(model: provider.requestEligibleVendorModelList[index],),);
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

