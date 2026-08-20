import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import '../../../../../core/providers/vendor_profile_provider.dart';
import '../../../../../core/styles/styles.dart';
import '../../../../../core/utils/constants/colors_constants.dart';
import '../../../../../widgets/custom_button.dart';
import '../../../../../widgets/custom_textfield.dart';

class RateVendorBottomSheet extends StatefulWidget {
  final int vendorId;
  final int requestId;

  const RateVendorBottomSheet({Key? key, required this.vendorId, required this.requestId}) : super(key: key);

  @override
  State<RateVendorBottomSheet> createState() => _RateVendorBottomSheetState();
}

class _RateVendorBottomSheetState extends State<RateVendorBottomSheet> {
  double rating = 5.0;
  TextEditingController reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 20,
      ),
      child: Consumer<VendorProfileProvider>(
        builder: (context, provider, child) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'تقييم التاجر',
                style: txtBold05.copyWith(color: AppColor.primaryColor),
              ),
              const SizedBox(height: 16),
              RatingBar.builder(
                initialRating: 5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (val) {
                  rating = val;
                },
              ),
              const SizedBox(height: 20),
              CustomTextField(
                label: 'اكتب تعليقك (اختياري)',
                hint: 'كيف كانت تجربتك؟',
                controller: reviewController,
                maxLines: 4,
              ),
              const SizedBox(height: 20),
              CustomButton(
                label: 'إرسال التقييم',
                txtSize: 16,
                loading: provider.isSubmitting,
                onTap: () async {
                  if (rating == 0) return;
                  final success = await provider.submitReview(
                    context,
                    widget.vendorId,
                    widget.requestId,
                    rating,
                    reviewController.text,
                  );
                  if (success) {
                    Navigator.pop(context);
                  }
                },
              ),
            ],
          );
        }
      ),
    );
  }
}
