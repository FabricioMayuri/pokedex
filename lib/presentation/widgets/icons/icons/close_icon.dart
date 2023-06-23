import 'package:flutter/cupertino.dart';

class CloseIcon extends CustomPainter {
  final Color color;
  const CloseIcon({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.5000000, size.height * 0.5437500);
    path0.lineTo(size.width * 0.2812500, size.height * 0.7625000);
    path0.cubicTo(
        size.width * 0.2750000,
        size.height * 0.7687500,
        size.width * 0.2677083,
        size.height * 0.7718750,
        size.width * 0.2593750,
        size.height * 0.7718750);
    path0.cubicTo(
        size.width * 0.2510417,
        size.height * 0.7718750,
        size.width * 0.2437500,
        size.height * 0.7687500,
        size.width * 0.2375000,
        size.height * 0.7625000);
    path0.cubicTo(
        size.width * 0.2312500,
        size.height * 0.7562500,
        size.width * 0.2281250,
        size.height * 0.7489583,
        size.width * 0.2281250,
        size.height * 0.7406250);
    path0.cubicTo(
        size.width * 0.2281250,
        size.height * 0.7322917,
        size.width * 0.2312500,
        size.height * 0.7250000,
        size.width * 0.2375000,
        size.height * 0.7187500);
    path0.lineTo(size.width * 0.4562500, size.height * 0.5000000);
    path0.lineTo(size.width * 0.2375000, size.height * 0.2812500);
    path0.cubicTo(
        size.width * 0.2312500,
        size.height * 0.2750000,
        size.width * 0.2281250,
        size.height * 0.2677083,
        size.width * 0.2281250,
        size.height * 0.2593750);
    path0.cubicTo(
        size.width * 0.2281250,
        size.height * 0.2510417,
        size.width * 0.2312500,
        size.height * 0.2437500,
        size.width * 0.2375000,
        size.height * 0.2375000);
    path0.cubicTo(
        size.width * 0.2437500,
        size.height * 0.2312500,
        size.width * 0.2510417,
        size.height * 0.2281250,
        size.width * 0.2593750,
        size.height * 0.2281250);
    path0.cubicTo(
        size.width * 0.2677083,
        size.height * 0.2281250,
        size.width * 0.2750000,
        size.height * 0.2312500,
        size.width * 0.2812500,
        size.height * 0.2375000);
    path0.lineTo(size.width * 0.5000000, size.height * 0.4562500);
    path0.lineTo(size.width * 0.7187500, size.height * 0.2375000);
    path0.cubicTo(
        size.width * 0.7249979,
        size.height * 0.2312500,
        size.width * 0.7322917,
        size.height * 0.2281250,
        size.width * 0.7406229,
        size.height * 0.2281250);
    path0.cubicTo(
        size.width * 0.7489562,
        size.height * 0.2281250,
        size.width * 0.7562479,
        size.height * 0.2312500,
        size.width * 0.7624979,
        size.height * 0.2375000);
    path0.cubicTo(
        size.width * 0.7687479,
        size.height * 0.2437500,
        size.width * 0.7718729,
        size.height * 0.2510417,
        size.width * 0.7718729,
        size.height * 0.2593750);
    path0.cubicTo(
        size.width * 0.7718729,
        size.height * 0.2677083,
        size.width * 0.7687479,
        size.height * 0.2750000,
        size.width * 0.7624979,
        size.height * 0.2812500);
    path0.lineTo(size.width * 0.5437500, size.height * 0.5000000);
    path0.lineTo(size.width * 0.7624979, size.height * 0.7187500);
    path0.cubicTo(
        size.width * 0.7687479,
        size.height * 0.7250000,
        size.width * 0.7718729,
        size.height * 0.7322917,
        size.width * 0.7718729,
        size.height * 0.7406250);
    path0.cubicTo(
        size.width * 0.7718729,
        size.height * 0.7489583,
        size.width * 0.7687479,
        size.height * 0.7562500,
        size.width * 0.7624979,
        size.height * 0.7625000);
    path0.cubicTo(
        size.width * 0.7562479,
        size.height * 0.7687500,
        size.width * 0.7489562,
        size.height * 0.7718750,
        size.width * 0.7406229,
        size.height * 0.7718750);
    path0.cubicTo(
        size.width * 0.7322917,
        size.height * 0.7718750,
        size.width * 0.7249979,
        size.height * 0.7687500,
        size.width * 0.7187500,
        size.height * 0.7625000);
    path0.lineTo(size.width * 0.5000000, size.height * 0.5437500);
    path0.close();

    Paint paint0fill = Paint()..style = PaintingStyle.fill;
    paint0fill.color = color;
    canvas.drawPath(path0, paint0fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
