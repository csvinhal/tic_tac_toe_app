enum ImageAssetValue {
  backArrow,
  backArrowDark,
  date,
  dateDark,
  facebook,
  facebookDark,
  games,
  gamesDark,
  gamesDarkSelected,
  gamesSelected,
  google,
  googleDark,
  home,
  homeSelected,
  homeDark,
  homeDarkSelected,
  logo,
  logoDark,
  logoBlack,
  retry,
  retryDark,
  search,
  searchDark,
  star,
  starDark,
  people,
  peopleDark,
  peopleDarkSelected,
  peopleSelected,
}

const _kSplitCamelCaseRegex = '(?<=[a-z])[A-Z]';

extension ParseToName on ImageAssetValue {
  String get name {
    final raw = toString().split('.').last;
    final exp = RegExp(_kSplitCamelCaseRegex);
    return raw
        .replaceAllMapped(exp, (match) => '_${match.group(0) ?? ""}')
        .toLowerCase();
  }
}
