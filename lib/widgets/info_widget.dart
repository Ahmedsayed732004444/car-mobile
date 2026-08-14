
import 'package:flutter/material.dart';

import '../core/utils/constants/colors_constants.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFFEED6), // لون البيج
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // أيقونة التنبيه
          const Icon(Icons.info, color: AppColor.primaryColor,),

          const SizedBox(width: 12),

          // النص
           Expanded(
            child: Text(text,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                height: 1.6,
                color: Color(0xFF7A7A7A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
