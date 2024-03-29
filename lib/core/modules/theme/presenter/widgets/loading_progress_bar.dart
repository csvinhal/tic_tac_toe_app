import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_tac_toe_app/core/core.dart';

class LoadingProgressBar extends StatefulWidget {
  const LoadingProgressBar({
    required this.progress,
    super.key,
  });

  final double progress;

  @override
  State<LoadingProgressBar> createState() => _LoadingProgressBarState();
}

class _LoadingProgressBarState extends State<LoadingProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  double _percent = 0;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = Tween<double>(begin: 0, end: _progress).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.linear),
    )..addListener(() {
        setState(() {
          _percent = _animation.value;
        });
      });

    _animationController.forward();
  }

  @override
  void didUpdateWidget(covariant LoadingProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.progress != _progress) {
      _animation =
          Tween<double>(begin: oldWidget.progress, end: _progress).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.linear),
      );
      _animationController.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  LoadingProgressBarThemeData? themeStyleOf(BuildContext context) {
    return LoadingProgressBarTheme.of(context);
  }

  LoadingProgressBarThemeData defaultStyleOf() {
    return LoadingProgressBarThemeData.fallback();
  }

  @override
  Widget build(BuildContext context) {
    final themeStyle = themeStyleOf(context);
    final defaultStyle = defaultStyleOf();
    final themeData = themeStyle ?? defaultStyle;

    final backgroundColor = themeData.backgroundColor;
    final progressColor = themeData.progressColor;

    return Material(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: 6.0.h,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  CustomPaint(
                    painter: _LinearBarPainter(
                      backgroundColor: backgroundColor!,
                      progressColor: progressColor!,
                      progress: _percent,
                    ),
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  double get _progress => widget.progress;
}

class _LinearBarPainter extends CustomPainter {
  _LinearBarPainter({
    required this.backgroundColor,
    required this.progressColor,
    required this.progress,
  }) {
    _paintBackground.color = backgroundColor;
    _paintLine.color = progressColor;
  }

  final Paint _paintBackground = Paint();
  final Color backgroundColor;
  final Color progressColor;
  final double progress;
  final Paint _paintLine = Paint();

  @override
  void paint(Canvas canvas, Size size) {
    final radius = Radius.circular(5.0.r);
    _drawBackground(canvas, size, radius);
    _drawProgressLine(canvas, size, radius);
  }

  void _drawBackground(Canvas canvas, Size size, Radius radius) {
    final backgroundPath = Path();
    final rectangle = Rect.fromLTWH(0, 0, size.width, size.height);
    final rectangleWithRadius = RRect.fromRectAndRadius(rectangle, radius);

    backgroundPath.addRRect(rectangleWithRadius);

    canvas
      ..drawPath(backgroundPath, _paintBackground)
      ..clipPath(backgroundPath);
  }

  void _drawProgressLine(Canvas canvas, Size size, Radius radius) {
    final xProgress = size.width * progress;
    final linePath = Path();

    final rectangle = Rect.fromLTWH(0, 0, xProgress, size.height);
    final rectangleWithRadius = RRect.fromRectAndRadius(rectangle, radius);

    linePath.addRRect(rectangleWithRadius);
    canvas.drawPath(linePath, _paintLine);
  }

  @override
  bool shouldRepaint(covariant _LinearBarPainter oldDelegate) {
    return progress != oldDelegate.progress;
  }
}
