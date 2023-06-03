import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/core.dart';

class ImageAssets extends StatelessWidget {
  const ImageAssets({
    required this.image,
    required this.imageAssetType,
    this.height,
    this.width,
    super.key,
  });

  const ImageAssets.image({
    required this.image,
    this.imageAssetType = ImageAssetType.image,
    this.height,
    this.width,
    super.key,
  });

  const ImageAssets.icon({
    required this.image,
    this.imageAssetType = ImageAssetType.icon,
    this.height,
    this.width,
    super.key,
  });

  final ImageAssetValue image;
  final ImageAssetType imageAssetType;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetName,
      width: width,
      height: height,
    );
  }

  String get assetName => 'assets/${imageAssetType.path}/${image.name}.png';
}
