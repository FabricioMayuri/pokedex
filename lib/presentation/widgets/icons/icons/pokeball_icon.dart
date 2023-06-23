import 'package:flutter/material.dart';

class PokeballIcon extends CustomPainter {
  final Color color;
  const PokeballIcon({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(
      size.width * 0.6190500,
      size.height * 0.5000000,
    );
    path0.cubicTo(
      size.width * 0.6190500,
      size.height * 0.5657500,
      size.width * 0.5657500,
      size.height * 0.6190458,
      size.width * 0.5000042,
      size.height * 0.6190458,
    );
    path0.cubicTo(
      size.width * 0.4342542,
      size.height * 0.6190458,
      size.width * 0.3809550,
      size.height * 0.5657500,
      size.width * 0.3809550,
      size.height * 0.5000000,
    );
    path0.cubicTo(
      size.width * 0.3809550,
      size.height * 0.4342500,
      size.width * 0.4342542,
      size.height * 0.3809525,
      size.width * 0.5000042,
      size.height * 0.3809525,
    );
    path0.cubicTo(
      size.width * 0.5657500,
      size.height * 0.3809525,
      size.width * 0.6190500,
      size.height * 0.4342500,
      size.width * 0.6190500,
      size.height * 0.5000000,
    );
    path0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = color;
    canvas.drawPath(path0, paint0fill);

    Path path1 = Path();
    path1.moveTo(size.width * 0.5000042, size.height);
    path1.cubicTo(
      size.width * 0.7518917,
      size.height,
      size.width * 0.9602792,
      size.height * 0.8137333,
      size.width * 0.9949375,
      size.height * 0.5714292,
    );
    path1.lineTo(size.width * 0.7020958, size.height * 0.5714292);
    path1.cubicTo(
      size.width * 0.6726792,
      size.height * 0.6546583,
      size.width * 0.5933042,
      size.height * 0.7142875,
      size.width * 0.5000042,
      size.height * 0.7142875,
    );
    path1.cubicTo(
      size.width * 0.4067013,
      size.height * 0.7142875,
      size.width * 0.3273267,
      size.height * 0.6546583,
      size.width * 0.2979100,
      size.height * 0.5714292,
    );
    path1.lineTo(size.width * 0.005065917, size.height * 0.5714292);
    path1.cubicTo(
        size.width * 0.03972517,
        size.height * 0.8137333,
        size.width * 0.2481117,
        size.height,
        size.width * 0.5000042,
        size.height);
    path1.close();
    path1.moveTo(size.width * 0.2979100, size.height * 0.4285708);
    path1.lineTo(size.width * 0.005065917, size.height * 0.4285708);
    path1.cubicTo(
      size.width * 0.03972517,
      size.height * 0.1862646,
      size.width * 0.2481117,
      0,
      size.width * 0.5000042,
      0,
    );
    path1.cubicTo(
      size.width * 0.7518917,
      0,
      size.width * 0.9602792,
      size.height * 0.1862646,
      size.width * 0.9949375,
      size.height * 0.4285708,
    );
    path1.lineTo(size.width * 0.7020958, size.height * 0.4285708);
    path1.cubicTo(
      size.width * 0.6726792,
      size.height * 0.3453433,
      size.width * 0.5933042,
      size.height * 0.2857142,
      size.width * 0.5000042,
      size.height * 0.2857142,
    );
    path1.cubicTo(
      size.width * 0.4067013,
      size.height * 0.2857142,
      size.width * 0.3273267,
      size.height * 0.3453433,
      size.width * 0.2979100,
      size.height * 0.4285708,
    );
    path1.close();
    path1.moveTo(
      size.width * 0.6190500,
      size.height * 0.5000000,
    );
    path1.cubicTo(
      size.width * 0.6190500,
      size.height * 0.5657500,
      size.width * 0.5657500,
      size.height * 0.6190458,
      size.width * 0.5000042,
      size.height * 0.6190458,
    );
    path1.cubicTo(
      size.width * 0.4342542,
      size.height * 0.6190458,
      size.width * 0.3809550,
      size.height * 0.5657500,
      size.width * 0.3809550,
      size.height * 0.5000000,
    );
    path1.cubicTo(
      size.width * 0.3809550,
      size.height * 0.4342500,
      size.width * 0.4342542,
      size.height * 0.3809525,
      size.width * 0.5000042,
      size.height * 0.3809525,
    );
    path1.cubicTo(
      size.width * 0.5657500,
      size.height * 0.3809525,
      size.width * 0.6190500,
      size.height * 0.4342500,
      size.width * 0.6190500,
      size.height * 0.5000000,
    );
    path1.close();

    Paint paint1fill = Paint()..style = PaintingStyle.fill;
    paint1fill.color = color;
    canvas.drawPath(path1, paint1fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
