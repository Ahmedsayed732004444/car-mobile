import 'package:flutter/material.dart';

import '../core/utils/constants/colors_constants.dart';
import '../core/utils/size_config.dart';

enum CustomBorderType { outline, underline }

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.label,
    this.hint = '',
    this.maxLines = 1,
    this.maxLength,
    this.keyboardType,
    this.controller,
    this.textInputAction,
    this.prefixIcon,
    this.suffixIcon,
    this.onFieldSubmitted,
    this.validator,
    this.onSaved,
    this.focusNode,
    this.obscure = false,
    this.readOnly = false,
    this.counterText,
    this.textDirection,
    this.borderType = CustomBorderType.outline,
    this.onTap,
    this.fillColor,
    this.filled = false,
  }) : super(key: key);

  final String label;
  final String hint;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final FocusNode? focusNode;
  final bool obscure;
  final bool readOnly;
  final int? maxLines;
  final int? maxLength;
  final String? counterText;
  final TextDirection? textDirection;
  final CustomBorderType borderType;
  final GestureTapCallback? onTap;
  final Color? fillColor;
  final bool? filled;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode _effectiveFocusNode;
  bool _isCreatedInternalFocus = false;

  @override
  void initState() {
    super.initState();
    _initFocusNode();
  }

  void _initFocusNode() {
    if (widget.focusNode != null) {
      _effectiveFocusNode = widget.focusNode!;
      _isCreatedInternalFocus = false;
    } else {
      _effectiveFocusNode = FocusNode();
      _isCreatedInternalFocus = true;
    }
    _effectiveFocusNode.addListener(_handleFocusChange);
  }

  @override
  void didUpdateWidget(CustomTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.focusNode != oldWidget.focusNode) {
      _effectiveFocusNode.removeListener(_handleFocusChange);
      if (_isCreatedInternalFocus) {
        _effectiveFocusNode.dispose();
      }
      _initFocusNode();
    }
  }

  void _handleFocusChange() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _effectiveFocusNode.removeListener(_handleFocusChange);
    if (_isCreatedInternalFocus) {
      _effectiveFocusNode.dispose();
    }
    super.dispose();
  }

  InputBorder _border({required Color color}) {
    final borderRadius = BorderRadius.circular(12);

    return widget.borderType == CustomBorderType.outline
        ? OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide: BorderSide(color: color),
          )
        : UnderlineInputBorder(
            borderSide: BorderSide(color: color),
          );
  }

  @override
  Widget build(BuildContext context) {
    // Hide hint immediately when field is focused OR when text is present!
    final showHint = !_effectiveFocusNode.hasFocus && widget.hint.isNotEmpty;

    return TextFormField(
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      obscureText: widget.obscure,
      readOnly: widget.readOnly,
      textDirection: widget.textDirection,
      onTap: widget.onTap,
      style: TextStyle(
        color: AppColor.blackColor,
        fontSize: SizeConfig.widthResponsive(0.04),
        fontWeight: FontWeight.w500,
      ),
      textInputAction: widget.textInputAction,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        labelText: widget.label.isNotEmpty ? widget.label : null,
        hintText: showHint ? widget.hint : null,
        fillColor: widget.fillColor,
        filled: widget.filled,
        labelStyle: TextStyle(
          color: AppColor.greyShade2,
          fontSize: SizeConfig.widthResponsive(0.04),
          fontWeight: FontWeight.w600,
        ),
        hintStyle: TextStyle(
          color: AppColor.greyShade2,
          fontSize: SizeConfig.widthResponsive(0.04),
          fontWeight: FontWeight.w500,
        ),
        enabledBorder: _border(color: AppColor.grey350),
        errorBorder: _border(color: Colors.red),
        focusedErrorBorder: _border(color: AppColor.primaryColor),
        focusedBorder: _border(color: AppColor.primaryColor),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        counterText: widget.counterText,
      ),
      onFieldSubmitted: widget.onFieldSubmitted,
      validator: widget.validator,
      onSaved: widget.onSaved,
      focusNode: _effectiveFocusNode,
      maxLines: widget.maxLines,
      maxLength: widget.maxLength,
    );
  }
}
