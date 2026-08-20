import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import '../../../../../core/data_sources/remote/api_path.dart';
import '../../../../../core/providers/vendor_profile_provider.dart';
import '../../../../../core/styles/styles.dart';
import '../../../../../core/utils/constants/colors_constants.dart';
import '../../../../../widgets/custom_loading.dart';
import '../../../../../widgets/images/custom_image.dart';

class VendorProfileScreen extends StatefulWidget {
  final int vendorId;
  final bool isVendorView;

  const VendorProfileScreen({Key? key, required this.vendorId, this.isVendorView = false}) : super(key: key);

  @override
  State<VendorProfileScreen> createState() => _VendorProfileScreenState();
}

class _VendorProfileScreenState extends State<VendorProfileScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<VendorProfileProvider>().fetchVendorProfile(context, widget.vendorId, refresh: true);
    });

    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        context.read<VendorProfileProvider>().fetchVendorProfile(context, widget.vendorId);
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.isVendorView ? 'تقييمات العملاء' : 'الملف التعريفي للتاجر',
          style: txtBold05.copyWith(color: const Color(0xFF0D3261)),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Consumer<VendorProfileProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading && provider.vendor == null) {
            return const CustomLoading();
          }

          if (provider.vendor == null) {
            return const Center(child: Text('لم يتم العثور على التاجر'));
          }

          final vendor = provider.vendor!;
          
          return ListView(
            controller: _scrollController,
            padding: const EdgeInsets.all(16),
            children: [
              // Header
              if (!widget.isVendorView) ...[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            vendor.companyName,
                            style: txtBold05.copyWith(color: const Color(0xFF0D3261), fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                vendor.rating.toStringAsFixed(1),
                                style: txtBold05.copyWith(color: const Color(0xFF0D3261)),
                              ),
                              const SizedBox(width: 4),
                              RatingBarIndicator(
                                rating: vendor.rating,
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemCount: 5,
                                itemSize: 20.0,
                                direction: Axis.horizontal,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '(${vendor.totalReviews})',
                                style: txtMedium04.copyWith(color: Colors.grey),
                              ),
                            ],
                          ),
                          if (vendor.memberSince.isNotEmpty) ...[
                            const SizedBox(height: 8),
                            Text(
                              'عضو منذ: ${vendor.memberSince}',
                              style: txtRegular04.copyWith(color: Colors.grey[600]),
                            ),
                          ],
                          if (vendor.commercialRecord.isNotEmpty) ...[
                            const SizedBox(height: 8),
                            Text(
                              'السجل التجاري: ${vendor.commercialRecord}',
                              style: txtRegular04.copyWith(color: Colors.grey[600]),
                            ),
                          ],
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: ClipOval(
                        child: CustomImageWidget(
                          urlImage: vendor.logo,
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Text('عن الشركة', style: txtBold04),
                const SizedBox(height: 8),
                Text(
                  vendor.description.isNotEmpty ? vendor.description : 'لا يوجد وصف متاح للشركة حالياً.',
                  style: txtRegular04.copyWith(color: vendor.description.isNotEmpty ? Colors.black : Colors.grey),
                ),
                
                const SizedBox(height: 24),
                const Divider(),
              ] else ...[
                // Vendor view: Just show overall rating big
                Center(
                  child: Column(
                    children: [
                      Text(
                        vendor.rating.toStringAsFixed(1),
                        style: txtBold05.copyWith(fontSize: 48, color: const Color(0xFF0D3261)),
                      ),
                      RatingBarIndicator(
                        rating: vendor.rating,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 32.0,
                        direction: Axis.horizontal,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'إجمالي التقييمات: ${vendor.totalReviews}',
                        style: txtRegular04.copyWith(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const Divider(),
              ],
              
              const SizedBox(height: 16),
              
              Text('تقييمات العملاء', style: txtBold04),
              const SizedBox(height: 16),
              
              if (provider.reviewsList.isEmpty)
                const Center(child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('لا يوجد تقييمات بعد.'),
                ))
              else
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: provider.reviewsList.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    final review = provider.reviewsList[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 16,
                                backgroundColor: Colors.grey[200],
                                child: Text(
                                  review.userName.isNotEmpty ? review.userName[0] : 'ع',
                                  style: txtBold04,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  review.userName,
                                  style: txtSemiBold035,
                                ),
                              ),
                              Text(
                                review.createdAt,
                                style: txtRegular04.copyWith(color: Colors.grey),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          RatingBarIndicator(
                            rating: review.rating,
                            itemBuilder: (context, index) => const Icon(Icons.star, color: Colors.amber),
                            itemCount: 5,
                            itemSize: 16.0,
                            direction: Axis.horizontal,
                          ),
                          if (review.review.isNotEmpty) ...[
                            const SizedBox(height: 8),
                            Text(review.review, style: txtRegular04),
                          ],
                        ],
                      ),
                    );
                  },
                ),
                
              if (provider.isLoading && provider.reviewsList.isNotEmpty)
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CustomLoading(),
                ),
            ],
          );
        },
      ),
    );
  }
}
