import 'package:flutter/material.dart';

import '../../../../core/styles/styles.dart';
import '../../../../core/utils/constants/colors_constants.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../core/utils/constants/assets_path.dart';

class ConfirmPledgeDialog extends StatefulWidget {
  final VoidCallback onConfirm;
  const ConfirmPledgeDialog({super.key, required this.onConfirm});

  @override
  State<ConfirmPledgeDialog> createState() => _ConfirmPledgeDialogState();
}

class _ConfirmPledgeDialogState extends State<ConfirmPledgeDialog> {
  bool isChecked1 = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: Colors.white,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.close, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 8),
            // Verses Title
            Text(
              'قال تعالى : (إِنَّ اللَّهَ يَأْمُرُكُمْ أَن تُؤَدُّوا الْأَمَانَاتِ إِلَىٰ أَهْلِهَا)\nوقال تعالى : (وَأَوْفُوا بِالْعَهْدِ ۖ إِنَّ الْعَهْدَ كَانَ مَسْئُولًا)',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: SizeConfig.widthResponsive(0.045),
                color: AppColor.primaryColor,
                fontWeight: FontWeight.bold,
                height: 1.6,
              ),
            ),
            const SizedBox(height: 24),
            
            // Checkbox 1
            _buildCheckboxRow(
              'عند الشراء من التطبيق ',
              'أتعهد بدفع 5 ريال عن كل عملية شراء.',
              isChecked1,
              (val) => setState(() => isChecked1 = val ?? false),
            ),
            const SizedBox(height: 16),
            
            // Checkbox 2
            _buildCheckboxRow(
              'عند الشراء خارج التطبيق ',
              'إذا تعرفت على متجر من خلال التطبيق ثم اشتريت منه مستقبلا، أتعهد بدفع 5 ريال عن كل عملية شراء.',
              isChecked2,
              (val) => setState(() => isChecked2 = val ?? false),
            ),
            const SizedBox(height: 30),
            
            // Confirm button
            CustomButton(
              label: 'تأكيد الطلب',
              txtSize: SizeConfig.widthResponsive(0.04),
              primaryColor: (isChecked1 && isChecked2) ? AppColor.primaryColor : Colors.grey[400]!,
              onTap: () {
                if (isChecked1 && isChecked2) {
                  Navigator.pop(context);
                  widget.onConfirm();
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCheckboxRow(String redText, String blackText, bool value, ValueChanged<bool?> onChanged) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: Colors.teal,
            side: const BorderSide(color: Colors.teal, width: 2),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () => onChanged(!value),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: SizeConfig.widthResponsive(0.038),
                  fontFamily: 'Cairo',
                  height: 1.5,
                ),
                children: [
                  TextSpan(
                    text: redText,
                    style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: blackText,
                    style: const TextStyle(color: AppColor.primaryColor, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
