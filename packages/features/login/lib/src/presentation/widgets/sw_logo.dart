import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

/// SmartWarehouse logo: yellow square mark with black "tape" cross,
/// followed by the wordmark `Smart` (black) + `Warehouse` (gray).
class SwLogo extends StatelessWidget {
  const SwLogo({this.size = 36, super.key});

  /// Size of the square mark in logical pixels (36 default, 56 large).
  final double size;

  bool get _isLarge => size >= 48;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: size,
          height: size,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: SwColors.yellow,
              borderRadius: BorderRadius.circular(_isLarge ? 12 : 8),
              boxShadow: const [
                BoxShadow(color: Color(0x0F000000), offset: Offset(0, -3), spreadRadius: -3),
              ],
            ),
            child: CustomPaint(painter: _TapeCrossPainter(size: size)),
          ),
        ),
        const SizedBox(width: 10),
        RichText(
          text: TextSpan(
            style: SwText.display(
              size: _isLarge ? 28 : 20,
              weight: FontWeight.w700,
              letterSpacing: -0.03,
            ),
            children: [
              const TextSpan(text: 'Smart'),
              TextSpan(
                text: 'Warehouse',
                style: SwText.display(
                  size: _isLarge ? 28 : 20,
                  weight: FontWeight.w600,
                  color: SwColors.text3,
                  letterSpacing: -0.03,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TapeCrossPainter extends CustomPainter {
  _TapeCrossPainter({required this.size});
  final double size;

  @override
  void paint(Canvas canvas, Size canvasSize) {
    final paint = Paint()..color = SwColors.text;
    final inset = size * 0.11;
    final stroke = 2.0;
    // vertical
    canvas.drawRect(
      Rect.fromLTWH((canvasSize.width - stroke) / 2, inset, stroke, canvasSize.height - inset * 2),
      paint,
    );
    // horizontal
    canvas.drawRect(
      Rect.fromLTWH(inset, (canvasSize.height - stroke) / 2, canvasSize.width - inset * 2, stroke),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant _TapeCrossPainter old) => old.size != size;
}
