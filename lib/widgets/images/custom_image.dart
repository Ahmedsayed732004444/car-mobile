import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../core/data_sources/remote/api_path.dart';
import '../../core/utils/constants/assets_path.dart';

class CustomImageWidget extends StatelessWidget {
  final File? fileImage;
  final String? urlImage;
  final String? assetImage;
  final double width;
  final double height;
  final double radius;
  final BoxFit fit;
  final Color bgColor;
  final Color? color;
  final String assetDefaultPath;

  const CustomImageWidget({
      super.key,
      this.fileImage,
      this.urlImage,
      this.assetImage,
       this.width = double.infinity,
       this.height = double.infinity,
       this.radius = 10,
       this.fit = BoxFit.cover,
     this.bgColor = Colors.transparent,
     this.color,
    this.assetDefaultPath = AssetsPath.logo
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:  BorderRadius.all(Radius.circular(radius)),
      child: Material(
        color: bgColor,
        child: _buildImage(),
      ),
    );
  }

  Widget _buildImage() {

    if (fileImage != null) {
      return Image.file(
        fileImage!,
        height: height,
        width: width,
        fit: fit,
      );
    }

    if (urlImage != null && urlImage!.isNotEmpty) {
      return CachedNetworkImage(
        height: height,
        width: width,
        fit: fit,
        color: color,
        imageUrl: '${ApiPath.baseUrlImage}$urlImage',
        placeholder: (_, __) => _placeholder(),
        errorWidget: (_, __, ___) => _errorImage(),
      );
    }

    if (assetImage != null && assetImage!.isNotEmpty) {
      return Image.asset(
        assetImage!,
        height: height,
        width: width,
        fit: fit,
        color: color,
      );
    }

    return _errorImage();
  }

  Widget _placeholder() => Shimmer.fromColors(
    baseColor: Colors.grey[100]!,
    highlightColor: Colors.grey[300]!,
    child: Image.asset(
      AssetsPath.logo,
      height: width,
      width: width,
    ),
  );

  Widget _errorImage() => Image.asset(
    assetDefaultPath,
    height: height,
    width: width,
    fit: fit,
    color: color,
  );
}


