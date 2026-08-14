
import 'dart:io';

import 'package:flutter/material.dart';

import '../../core/utils/constants/colors_constants.dart';
import '../../core/utils/size_config.dart';

class AddImageWidget extends StatelessWidget {
  const AddImageWidget({super.key, this.file, this.onTap, this.deleteImage, this.height = 150});
  final File? file;
  final GestureTapCallback? onTap;
  final GestureTapCallback? deleteImage;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: SizeConfig.widthResponsive(0.50),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
          color: AppColor.secondaryColor,
        ),
        child: file != null
            ? Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.file(
                file!,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 5,
              right: 5,
              child: InkWell(
                onTap: deleteImage,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(4),
                  child: const Icon(Icons.close,
                      color: Colors.white, size: 18),
                ),
              ),
            ),
          ],
        )
            : const Center(
          child: Icon(Icons.add_a_photo,
              size: 40, color: AppColor.primaryColor),
        ),
      ),
    );
  }
}
