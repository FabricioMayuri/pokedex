import 'package:flutter/cupertino.dart';

class LeftIcon extends CustomPainter {
  final Color color;
  const LeftIcon({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.5614604, size.height * 0.7270833);
    path0.lineTo(size.width * 0.3552104, size.height * 0.5208333);
    path0.cubicTo(
        size.width * 0.3517375,
        size.height * 0.5173604,
        size.width * 0.3493083,
        size.height * 0.5138896,
        size.width * 0.3479187,
        size.height * 0.5104167);
    path0.cubicTo(
        size.width * 0.3465292,
        size.height * 0.5069438,
        size.width * 0.3458354,
        size.height * 0.5031250,
        size.width * 0.3458354,
        size.height * 0.4989583);
    path0.cubicTo(
        size.width * 0.3458354,
        size.height * 0.4947917,
        size.width * 0.3465292,
        size.height * 0.4909729,
        size.width * 0.3479187,
        size.height * 0.4875000);
    path0.cubicTo(
        size.width * 0.3493083,
        size.height * 0.4840271,
        size.width * 0.3517375,
        size.height * 0.4805563,
        size.width * 0.3552104,
        size.height * 0.4770833);
    path0.lineTo(size.width * 0.5625021, size.height * 0.2697917);
    path0.cubicTo(
        size.width * 0.5687521,
        size.height * 0.2635417,
        size.width * 0.5762167,
        size.height * 0.2604167,
        size.width * 0.5848979,
        size.height * 0.2604167);
    path0.cubicTo(
        size.width * 0.5935792,
        size.height * 0.2604167,
        size.width * 0.6010437,
        size.height * 0.2635417,
        size.width * 0.6072937,
        size.height * 0.2697917);
    path0.cubicTo(
        size.width * 0.6135437,
        size.height * 0.2760417,
        size.width * 0.6164958,
        size.height * 0.2836812,
        size.width * 0.6161479,
        size.height * 0.2927083);
    path0.cubicTo(
        size.width * 0.6158000,
        size.height * 0.3017354,
        size.width * 0.6125021,
        size.height * 0.3093750,
        size.width * 0.6062521,
        size.height * 0.3156250);
    path0.lineTo(size.width * 0.4229188, size.height * 0.4989583);
    path0.lineTo(size.width * 0.6072937, size.height * 0.6833333);
    path0.cubicTo(
        size.width * 0.6135437,
        size.height * 0.6895833,
        size.width * 0.6166687,
        size.height * 0.6968750,
        size.width * 0.6166687,
        size.height * 0.7052083);
    path0.cubicTo(
        size.width * 0.6166687,
        size.height * 0.7135417,
        size.width * 0.6135437,
        size.height * 0.7208333,
        size.width * 0.6072937,
        size.height * 0.7270833);
    path0.cubicTo(
        size.width * 0.6010437,
        size.height * 0.7333333,
        size.width * 0.5934042,
        size.height * 0.7364583,
        size.width * 0.5843771,
        size.height * 0.7364583);
    path0.cubicTo(
        size.width * 0.5753500,
        size.height * 0.7364583,
        size.width * 0.5677104,
        size.height * 0.7333333,
        size.width * 0.5614604,
        size.height * 0.7270833);
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
