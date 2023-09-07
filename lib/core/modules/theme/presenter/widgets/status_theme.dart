import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:tic_tac_toe_app/core/core.dart';

class StatusThemeData extends Equatable with Diagnosticable {
  const StatusThemeData({
    required this.onlineColor,
    required this.offlineColor,
    required this.playingColor,
  });

  factory StatusThemeData.fallback() => const StatusThemeData(
        onlineColor: AppLightStaticColor.green,
        offlineColor: AppLightStaticColor.red,
        playingColor: AppLightStaticColor.grey,
      );

  final Color? onlineColor;
  final Color? offlineColor;
  final Color? playingColor;

  static StatusThemeData? lerp(
    StatusThemeData? a,
    StatusThemeData? b,
    double t,
  ) {
    if (identical(a, b)) {
      return a;
    }
    return StatusThemeData(
      onlineColor: Color.lerp(a?.onlineColor, b?.onlineColor, t),
      offlineColor: Color.lerp(a?.offlineColor, b?.offlineColor, t),
      playingColor: Color.lerp(a?.playingColor, b?.playingColor, t),
    );
  }

  @override
  List<Object?> get props => [onlineColor, offlineColor, playingColor];

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
        DiagnosticsProperty<Color?>(
          'onlineColor',
          onlineColor,
          defaultValue: null,
        ),
      )
      ..properties.add(
        DiagnosticsProperty<Color?>(
          'offlineColor',
          offlineColor,
          defaultValue: null,
        ),
      )
      ..properties.add(
        DiagnosticsProperty<Color?>(
          'playingColor',
          playingColor,
          defaultValue: null,
        ),
      );
  }
}

class StatusTheme extends InheritedTheme {
  const StatusTheme({
    required this.data,
    required super.child,
    super.key,
  });

  final StatusThemeData data;

  static StatusThemeData? of(BuildContext context) {
    final statusTheme =
        context.dependOnInheritedWidgetOfExactType<StatusTheme>();
    final ticTacToeTheme = Theme.of(context).extension<TicTacToeTheme>();
    return statusTheme?.data ?? ticTacToeTheme?.statusThemeData;
  }

  @override
  bool updateShouldNotify(covariant StatusTheme oldWidget) =>
      data != oldWidget.data;

  @override
  Widget wrap(BuildContext context, Widget child) {
    return StatusTheme(data: data, child: child);
  }
}
