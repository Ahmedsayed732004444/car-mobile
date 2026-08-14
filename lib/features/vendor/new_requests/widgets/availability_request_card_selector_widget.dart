
import 'package:flutter/material.dart';

import '../../../../core/utils/constants/enumeration.dart';
import '../../../../core/utils/size_config.dart';

class AvailabilityRequestCardSelectorWidget extends StatefulWidget {
  final ResponseRequestAvailabilityEnum? initial;
  final ValueChanged<ResponseRequestAvailabilityEnum>? onChanged;

  const AvailabilityRequestCardSelectorWidget({Key? key, this.initial, this.onChanged}) : super(key: key);

  @override
  _AvailabilityRequestCardSelectorWidgetState createState() => _AvailabilityRequestCardSelectorWidgetState();
}

class _AvailabilityRequestCardSelectorWidgetState extends State<AvailabilityRequestCardSelectorWidget> {
  ResponseRequestAvailabilityEnum _selected = ResponseRequestAvailabilityEnum.available;

  @override
  void initState() {
    super.initState();
    _selected = widget.initial ?? ResponseRequestAvailabilityEnum.available;
  }

  void _select(ResponseRequestAvailabilityEnum value) {
    setState(() => _selected = value);
    widget.onChanged?.call(value);
  }

  Widget _buildOption(ResponseRequestAvailabilityEnum value, IconData icon, String label, Color color) {
    final bool isSelected = _selected == value;
    return Expanded(
      child: GestureDetector(
        onTap: () => _select(value),
        child: AnimatedContainer(
          height: SizeConfig.heightResponsive(0.14),
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(horizontal: 6.0),
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
          decoration: BoxDecoration(
            color: isSelected ? color.withOpacity(0.12) : Colors.transparent,
            border: Border.all(color: isSelected ? color : Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12),
            boxShadow: isSelected
                ? [BoxShadow(color: color.withOpacity(0.08), blurRadius: 8, offset: Offset(0,4))]
                : null,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: isSelected ? color : Colors.grey.shade600),
              const SizedBox(height: 8),
              Text(label, textAlign: TextAlign.center, style: TextStyle(
                color: isSelected ? Colors.black : Colors.grey.shade700,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
              )),
              if (isSelected) ...[
                const SizedBox(height: 6),
                Icon(Icons.check_circle, size: 18, color: color),
              ]
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildOption(ResponseRequestAvailabilityEnum.available, Icons.check, 'متوفر', Colors.green),
        _buildOption(ResponseRequestAvailabilityEnum.available_with_difference, Icons.edit, 'متوفر مع اختلاف', Colors.orange),
        // _buildOption(ResponseRequestAvailabilityEnum.unavailable, Icons.close, 'غير متوفر', Colors.red),
      ],
    );
  }
}


