//Copy this CustomPainter code to the Bottom of the File
import 'package:flutter/cupertino.dart';

class RuleIcon extends CustomPainter {
  final Color color;
  const RuleIcon({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.1458333, size.height * 0.7500000);
    path0.cubicTo(
        size.width * 0.1291667,
        size.height * 0.7500000,
        size.width * 0.1145833,
        size.height * 0.7437500,
        size.width * 0.1020833,
        size.height * 0.7312500);
    path0.cubicTo(
        size.width * 0.08958333,
        size.height * 0.7187500,
        size.width * 0.08333333,
        size.height * 0.7041667,
        size.width * 0.08333333,
        size.height * 0.6875000);
    path0.lineTo(size.width * 0.08333333, size.height * 0.3125000);
    path0.cubicTo(
        size.width * 0.08333333,
        size.height * 0.2965271,
        size.width * 0.08958333,
        size.height * 0.2821188,
        size.width * 0.1020833,
        size.height * 0.2692708);
    path0.cubicTo(
        size.width * 0.1145833,
        size.height * 0.2564229,
        size.width * 0.1291667,
        size.height * 0.2500000,
        size.width * 0.1458333,
        size.height * 0.2500000);
    path0.lineTo(size.width * 0.8541667, size.height * 0.2500000);
    path0.cubicTo(
        size.width * 0.8708333,
        size.height * 0.2500000,
        size.width * 0.8854167,
        size.height * 0.2564229,
        size.width * 0.8979167,
        size.height * 0.2692708);
    path0.cubicTo(
        size.width * 0.9104167,
        size.height * 0.2821188,
        size.width * 0.9166667,
        size.height * 0.2965271,
        size.width * 0.9166667,
        size.height * 0.3125000);
    path0.lineTo(size.width * 0.9166667, size.height * 0.6875000);
    path0.cubicTo(
        size.width * 0.9166667,
        size.height * 0.7041667,
        size.width * 0.9104167,
        size.height * 0.7187500,
        size.width * 0.8979167,
        size.height * 0.7312500);
    path0.cubicTo(
        size.width * 0.8854167,
        size.height * 0.7437500,
        size.width * 0.8708333,
        size.height * 0.7500000,
        size.width * 0.8541667,
        size.height * 0.7500000);
    path0.lineTo(size.width * 0.1458333, size.height * 0.7500000);
    path0.close();
    path0.moveTo(size.width * 0.1458333, size.height * 0.6875000);
    path0.lineTo(size.width * 0.8541667, size.height * 0.6875000);
    path0.lineTo(size.width * 0.8541667, size.height * 0.3125000);
    path0.lineTo(size.width * 0.7187500, size.height * 0.3125000);
    path0.lineTo(size.width * 0.7187500, size.height * 0.5000000);
    path0.lineTo(size.width * 0.6562500, size.height * 0.5000000);
    path0.lineTo(size.width * 0.6562500, size.height * 0.3125000);
    path0.lineTo(size.width * 0.5312500, size.height * 0.3125000);
    path0.lineTo(size.width * 0.5312500, size.height * 0.5000000);
    path0.lineTo(size.width * 0.4687500, size.height * 0.5000000);
    path0.lineTo(size.width * 0.4687500, size.height * 0.3125000);
    path0.lineTo(size.width * 0.3437500, size.height * 0.3125000);
    path0.lineTo(size.width * 0.3437500, size.height * 0.5000000);
    path0.lineTo(size.width * 0.2812500, size.height * 0.5000000);
    path0.lineTo(size.width * 0.2812500, size.height * 0.3125000);
    path0.lineTo(size.width * 0.1458333, size.height * 0.3125000);
    path0.lineTo(size.width * 0.1458333, size.height * 0.6875000);
    path0.close();
    path0.moveTo(size.width * 0.2812500, size.height * 0.5000000);
    path0.lineTo(size.width * 0.3437500, size.height * 0.5000000);
    path0.lineTo(size.width * 0.2812500, size.height * 0.5000000);
    path0.close();
    path0.moveTo(size.width * 0.4687500, size.height * 0.5000000);
    path0.lineTo(size.width * 0.5312500, size.height * 0.5000000);
    path0.lineTo(size.width * 0.4687500, size.height * 0.5000000);
    path0.close();
    path0.moveTo(size.width * 0.6562500, size.height * 0.5000000);
    path0.lineTo(size.width * 0.7187500, size.height * 0.5000000);
    path0.lineTo(size.width * 0.6562500, size.height * 0.5000000);
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
