import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import '../../../../../core/providers/vendor_profile_provider.dart';
import '../../../../../core/styles/styles.dart';
import '../../../../../core/utils/constants/assets_path.dart';
import '../../../../../core/utils/constants/colors_constants.dart';
import '../../../../../core/utils/date_parser_utils.dart';
import '../../../../../widgets/arrow_back_widget.dart';
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
      backgroundColor: const Color(0xFFF7F9FC),
      appBar: AppBar(
        title: Text(
          widget.isVendorView ? 'تقييمات العملاء' : 'الملف التعريفي للتاجر',
          style: txtBold05.copyWith(color: AppColor.primaryColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: ArrowBackWidget(myContext: context),
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
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            children: [
              // Header Vendor Profile Card
              if (!widget.isVendorView) ...[
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Vendor Logo Avatar
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColor.primaryColor.withOpacity(0.2), width: 3),
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.primaryColor.withOpacity(0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ClipOval(
                          child: CustomImageWidget(
                            urlImage: vendor.logo,
                            width: 90,
                            height: 90,
                            assetDefaultPath: AssetsPath.logo,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      // Company Name
                      Text(
                        vendor.companyName,
                        style: txtBold05.copyWith(color: AppColor.primaryColor, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),

                      // Rating & Reviews Count Pill
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.amber.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              vendor.rating.toStringAsFixed(1),
                              style: txtBold04.copyWith(color: Colors.amber[900]),
                            ),
                            const SizedBox(width: 4),
                            RatingBarIndicator(
                              rating: vendor.rating,
                              itemBuilder: (context, index) => const Icon(
                                Icons.star_rounded,
                                color: Colors.amber,
                              ),
                              itemCount: 5,
                              itemSize: 18.0,
                              direction: Axis.horizontal,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              '(${vendor.totalReviews} تقييم)',
                              style: txtMedium04.copyWith(color: Colors.grey[700], fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Divider(height: 1, color: Color(0xFFEEEEEE)),
                      const SizedBox(height: 16),

                      // Info Badges Row
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 12,
                        runSpacing: 10,
                        children: [
                          if (vendor.memberSince.isNotEmpty)
                            _buildVendorInfoBadge(
                              icon: Icons.calendar_today_outlined,
                              label: 'عضو منذ: ${DateParserUtils.getDateFromString(vendor.memberSince)}',
                            ),
                          if (vendor.commercialRecord.isNotEmpty)
                            _buildVendorInfoBadge(
                              icon: Icons.assignment_outlined,
                              label: 'السجل التجاري: ${vendor.commercialRecord}',
                            ),
                          if (vendor.totalResponses > 0)
                            _buildVendorInfoBadge(
                              icon: Icons.handshake_outlined,
                              label: 'تعامل مع: ${vendor.totalResponses} عميل',
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                // About Company Card
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.info_outline_rounded, color: AppColor.primaryColor, size: 20),
                          const SizedBox(width: 8),
                          Text('نبذة عن الشركة', style: txtBold04.copyWith(color: AppColor.primaryColor)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        vendor.description.isNotEmpty ? vendor.description : 'لا يوجد وصف متاح للشركة حالياً.',
                        style: txtRegular04.copyWith(
                          color: vendor.description.isNotEmpty ? Colors.black87 : Colors.grey[600],
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ] else ...[
                // Vendor view: Overall rating big header
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
                        vendor.rating.toStringAsFixed(1),
                        style: txtBold05.copyWith(fontSize: 44, color: AppColor.primaryColor),
                      ),
                      const SizedBox(height: 6),
                      RatingBarIndicator(
                        rating: vendor.rating,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star_rounded,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 30.0,
                        direction: Axis.horizontal,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'إجمالي التقييمات: ${vendor.totalReviews}',
                        style: txtRegular04.copyWith(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],

              // Customer Reviews Header
              Row(
                children: [
                  const Icon(Icons.star_outline_rounded, color: AppColor.primaryColor, size: 22),
                  const SizedBox(width: 8),
                  Text('آراء وتقييمات العملاء', style: txtBold04.copyWith(color: AppColor.primaryColor)),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '${provider.reviewsList.length}',
                      style: txtBold04.copyWith(color: AppColor.primaryColor, fontSize: 13),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Reviews List
              if (provider.reviewsList.isEmpty)
                Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Text(
                      'لا توجد تقييمات للتاجر حتى الآن',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                )
              else
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: provider.reviewsList.length,
                  separatorBuilder: (context, index) => const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    final review = provider.reviewsList[index];
                    return Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade200),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 18,
                                backgroundColor: AppColor.primaryColor.withOpacity(0.1),
                                child: Text(
                                  review.userName.isNotEmpty ? review.userName[0].toUpperCase() : 'ع',
                                  style: txtBold04.copyWith(color: AppColor.primaryColor),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      review.userName.isNotEmpty ? review.userName : 'عميل',
                                      style: txtSemiBold035,
                                    ),
                                    Text(
                                      review.createdAt,
                                      style: txtRegular04.copyWith(color: Colors.grey[500], fontSize: 11),
                                    ),
                                  ],
                                ),
                              ),
                              RatingBarIndicator(
                                rating: review.rating,
                                itemBuilder: (context, index) => const Icon(Icons.star_rounded, color: Colors.amber),
                                itemCount: 5,
                                itemSize: 16.0,
                                direction: Axis.horizontal,
                              ),
                            ],
                          ),
                          if (review.review.isNotEmpty) ...[
                            const SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF9FAFB),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                review.review,
                                style: txtRegular04.copyWith(color: Colors.black87, height: 1.4),
                              ),
                            ),
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

  Widget _buildVendorInfoBadge({required IconData icon, required String label}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300, width: 0.8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: AppColor.primaryColor),
          const SizedBox(width: 6),
          Text(
            label,
            style: txtRegular04.copyWith(color: Colors.grey[800], fontSize: 12),
          ),
        ],
      ),
    );
  }
}

