import 'package:flutter/material.dart';
import '../../../../../core/styles/styles.dart';
import '../../../../../core/utils/constants/colors_constants.dart';

void showHowToCopyChassisBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.8, // 80% of screen height
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'كيف انسخ رقم الهيكل؟',
                  style: txtBold04.copyWith(color: AppColor.primaryColor),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 10),
            // Content
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  _buildStepWidget(
                    stepNumber: 1,
                    text: 'من تطبيق أبشر أفراد، الذهاب إلى الصفحة الرئيسة واختيار "مركباتي".',
                    imagePath: 'assets/images/chassis_step_1.png',
                  ),
                  _buildStepWidget(
                    stepNumber: 2,
                    text: 'اختر المركبة التي تريد نسخ رقم الهيكل منها.',
                    imagePath: 'assets/images/chassis_step_2.png',
                  ),
                  _buildStepWidget(
                    stepNumber: 3,
                    text: 'اضغط على "تفاصيل المركبة".',
                    imagePath: 'assets/images/chassis_step_3.png',
                  ),
                  _buildStepWidget(
                    stepNumber: 4,
                    text: 'قم بنسخ رقم الهيكل (علامة النسخ) وارجع ألصقه داخل التطبيق.',
                    imagePath: 'assets/images/chassis_step_4.png',
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}

Widget _buildStepWidget({required int stepNumber, required String text, required String imagePath}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 12,
              backgroundColor: AppColor.primaryColor,
              child: Text(
                '$stepNumber',
                style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                text,
                style: txtSemiBold035,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imagePath,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
        ),
      ],
    ),
  );
}
