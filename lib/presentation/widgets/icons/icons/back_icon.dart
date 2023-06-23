import 'package:flutter/cupertino.dart';

class BackIcon extends CustomPainter {
  final Color color;
  const BackIcon({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.4656250, size.height * 0.8114583);
    path0.lineTo(size.width * 0.1760417, size.height * 0.5218750);
    path0.cubicTo(
        size.width * 0.1725694,
        size.height * 0.5184021,
        size.width * 0.1701390,
        size.height * 0.5149312,
        size.width * 0.1687500,
        size.height * 0.5114583);
    path0.cubicTo(
        size.width * 0.1673610,
        size.height * 0.5079854,
        size.width * 0.1666667,
        size.height * 0.5041667,
        size.width * 0.1666667,
        size.height * 0.5000000);
    path0.cubicTo(
        size.width * 0.1666667,
        size.height * 0.4958333,
        size.width * 0.1673610,
        size.height * 0.4920146,
        size.width * 0.1687500,
        size.height * 0.4885417);
    path0.cubicTo(
        size.width * 0.1701390,
        size.height * 0.4850687,
        size.width * 0.1725694,
        size.height * 0.4815979,
        size.width * 0.1760417,
        size.height * 0.4781250);
    path0.lineTo(size.width * 0.4666667, size.height * 0.1875000);
    path0.cubicTo(
        size.width * 0.4722229,
        size.height * 0.1819444,
        size.width * 0.4791667,
        size.height * 0.1791667,
        size.width * 0.4875000,
        size.height * 0.1791667);
    path0.cubicTo(
        size.width * 0.4958333,
        size.height * 0.1791667,
        size.width * 0.5031250,
        size.height * 0.1822917,
        size.width * 0.5093750,
        size.height * 0.1885417);
    path0.cubicTo(
        size.width * 0.5156250,
        size.height * 0.1947917,
        size.width * 0.5187500,
        size.height * 0.2020833,
        size.width * 0.5187500,
        size.height * 0.2104167);
    path0.cubicTo(
        size.width * 0.5187500,
        size.height * 0.2187500,
        size.width * 0.5156250,
        size.height * 0.2260417,
        size.width * 0.5093750,
        size.height * 0.2322917);
    path0.lineTo(size.width * 0.2729167, size.height * 0.4687500);
    path0.lineTo(size.width * 0.7895833, size.height * 0.4687500);
    path0.cubicTo(
        size.width * 0.7986104,
        size.height * 0.4687500,
        size.width * 0.8060771,
        size.height * 0.4717021,
        size.width * 0.8119792,
        size.height * 0.4776042);
    path0.cubicTo(
        size.width * 0.8178813,
        size.height * 0.4835063,
        size.width * 0.8208333,
        size.height * 0.4909729,
        size.width * 0.8208333,
        size.height * 0.5000000);
    path0.cubicTo(
        size.width * 0.8208333,
        size.height * 0.5090271,
        size.width * 0.8178813,
        size.height * 0.5164937,
        size.width * 0.8119792,
        size.height * 0.5223958);
    path0.cubicTo(
        size.width * 0.8060771,
        size.height * 0.5282979,
        size.width * 0.7986104,
        size.height * 0.5312500,
        size.width * 0.7895833,
        size.height * 0.5312500);
    path0.lineTo(size.width * 0.2729167, size.height * 0.5312500);
    path0.lineTo(size.width * 0.5104167, size.height * 0.7687500);
    path0.cubicTo(
        size.width * 0.5159729,
        size.height * 0.7743062,
        size.width * 0.5187500,
        size.height * 0.7812500,
        size.width * 0.5187500,
        size.height * 0.7895833);
    path0.cubicTo(
        size.width * 0.5187500,
        size.height * 0.7979167,
        size.width * 0.5156250,
        size.height * 0.8052083,
        size.width * 0.5093750,
        size.height * 0.8114583);
    path0.cubicTo(
        size.width * 0.5031250,
        size.height * 0.8177083,
        size.width * 0.4958333,
        size.height * 0.8208333,
        size.width * 0.4875000,
        size.height * 0.8208333);
    path0.cubicTo(
        size.width * 0.4791667,
        size.height * 0.8208333,
        size.width * 0.4718750,
        size.height * 0.8177083,
        size.width * 0.4656250,
        size.height * 0.8114583);
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
