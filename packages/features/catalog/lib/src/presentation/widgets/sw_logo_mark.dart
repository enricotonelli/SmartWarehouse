import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

/// Small yellow square mark with the black "tape" cross used in the top app
/// bar of the design.
class SwLogoMark extends StatelessWidget {
  const SwLogoMark({this.size = 36, super.key});
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: SwColors.yellow,
          borderRadius: BorderRadius.circular(size >= 48 ? 12 : 8),
        ),
        child: CustomPaint(painter: _CrossPainter(size: size)),
      ),
    );
  }
}

class _CrossPainter extends CustomPainter {
  _CrossPainter({required this.size});
  final double size;

  @override
  void paint(Canvas canvas, Size canvasSize) {
    final paint = Paint()..color = SwColors.text;
    final inset = size * 0.11;
    const stroke = 2.0;
    canvas.drawRect(
      Rect.fromLTWH((canvasSize.width - stroke) / 2, inset, stroke, canvasSize.height - inset * 2),
      paint,
    );
    canvas.drawRect(
      Rect.fromLTWH(inset, (canvasSize.height - stroke) / 2, canvasSize.width - inset * 2, stroke),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant _CrossPainter old) => old.size != size;
}
