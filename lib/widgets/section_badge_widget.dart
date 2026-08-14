import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/providers/notification_badge_provider.dart';

class SectionBadgeWidget extends StatelessWidget {
  final String categoryKey;
  final Widget child;
  final AlignmentGeometry alignment;
  final Offset? offset;

  const SectionBadgeWidget({
    super.key,
    required this.categoryKey,
    required this.child,
    this.alignment = Alignment.topRight,
    this.offset,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<NotificationBadgeProvider>(
      builder: (context, provider, _) {
        final count = provider.getCount(categoryKey);

        if (count <= 0) {
          return child;
        }

        return Stack(
          clipBehavior: Clip.none,
          children: [
            child,
            Positioned(
              top: offset?.dy ?? -4,
              right: offset?.dx ?? -4,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.withOpacity(0.4),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                constraints: const BoxConstraints(
                  minWidth: 20,
                  minHeight: 20,
                ),
                child: Center(
                  child: Text(
                    '$count',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
