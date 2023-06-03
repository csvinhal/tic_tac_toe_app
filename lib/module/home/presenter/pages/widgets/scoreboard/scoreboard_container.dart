import 'package:flutter/material.dart';

class ScoreboardContainer extends StatelessWidget {
  const ScoreboardContainer({
    required this.child,
    required this.minHeight,
    super.key,
  });

  final Widget child;
  final double minHeight;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: minHeight),
      child: Card(
        elevation: 0,
        margin: EdgeInsets.zero,
        child: child,
      ),
    );
  }
}
