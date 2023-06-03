enum ImageAssetType {
  icon,
  image,
}

extension ParseToString on ImageAssetType {
  String get path {
    switch (this) {
      case ImageAssetType.icon:
        return 'icons';
      case ImageAssetType.image:
        return 'images';
    }
  }
}
