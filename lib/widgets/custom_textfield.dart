import 'package:flutter/material.dart';

import '../core/utils/constants/colors_constants.dart';
import '../core/utils/size_config.dart';

enum CustomBorderType { outline, underline }

class CustomTextField extends StatelessWidget {
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
    this.borderType = CustomBorderType.outline, this.onTap, this.fillColor, this.filled = false,
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

  InputBorder _border({required Color color}) {
    final borderRadius = BorderRadius.circular(12);

    return borderType == CustomBorderType.outline
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
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscure,
      readOnly: readOnly,
      textDirection: textDirection,
      onTap: onTap,
      style: TextStyle(
        color: AppColor.blackColor,
        fontSize: SizeConfig.widthResponsive(0.04),
        fontWeight: FontWeight.w500,
      ),
      textInputAction: textInputAction,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        labelText: label.isNotEmpty ? label : null,
        hintText: hint.isNotEmpty ? hint : null,
        fillColor: fillColor,
        filled: filled,
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
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        counterText: counterText,
      ),
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      onSaved: onSaved,
      focusNode: focusNode,
      maxLines: maxLines,
      maxLength: maxLength,
    );
  }
}
