import 'package:flutter/material.dart';
import 'package:tic_tac_toe_app/core/core.dart';

class ImageAssets extends StatelessWidget {
  const ImageAssets({
    required this.image,
    required this.imageAssetType,
    this.height,
    this.width,
    this.fit,
    this.semanticLabel,
    this.excludeFromSemantics = false,
    super.key,
  });

  const ImageAssets.image({
    required this.image,
    this.imageAssetType = ImageAssetType.image,
    this.height,
    this.width,
    this.fit,
    this.semanticLabel,
    this.excludeFromSemantics = false,
    super.key,
  });

  const ImageAssets.icon({
    required this.image,
    this.imageAssetType = ImageAssetType.icon,
    this.height,
    this.width,
    this.fit,
    this.semanticLabel,
    this.excludeFromSemantics = false,
    super.key,
  });

  final ImageAssetValue image;
  final ImageAssetType imageAssetType;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final String? semanticLabel;
  final bool excludeFromSemantics;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetName,
      width: width,
      height: height,
      fit: fit,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
    );
  }

  String get assetName => 'assets/${imageAssetType.path}/${image.name}.png';
}
