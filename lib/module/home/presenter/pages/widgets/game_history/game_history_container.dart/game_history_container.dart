import 'package:flutter/material.dart';

class GameHistoryContainer extends StatelessWidget {
  const GameHistoryContainer({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      child: child,
    );
  }
}
