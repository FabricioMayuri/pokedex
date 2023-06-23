import 'package:flutter/cupertino.dart';

class RightIcon extends CustomPainter {
  final Color color;
  const RightIcon({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.3687479, size.height * 0.7270833);
    path0.cubicTo(
        size.width * 0.3631917,
        size.height * 0.7201396,
        size.width * 0.3602417,
        size.height * 0.7125000,
        size.width * 0.3598937,
        size.height * 0.7041667);
    path0.cubicTo(
        size.width * 0.3595458,
        size.height * 0.6958333,
        size.width * 0.3624979,
        size.height * 0.6885417,
        size.width * 0.3687479,
        size.height * 0.6822917);
    path0.lineTo(size.width * 0.5520812, size.height * 0.4989583);
    path0.lineTo(size.width * 0.3677062, size.height * 0.3145833);
    path0.cubicTo(
        size.width * 0.3621500,
        size.height * 0.3090271,
        size.width * 0.3595458,
        size.height * 0.3015625,
        size.width * 0.3598937,
        size.height * 0.2921875);
    path0.cubicTo(
        size.width * 0.3602417,
        size.height * 0.2828125,
        size.width * 0.3631917,
        size.height * 0.2753479,
        size.width * 0.3687479,
        size.height * 0.2697917);
    path0.cubicTo(
        size.width * 0.3756917,
        size.height * 0.2628479,
        size.width * 0.3831583,
        size.height * 0.2595479,
        size.width * 0.3911437,
        size.height * 0.2598958);
    path0.cubicTo(
        size.width * 0.3991292,
        size.height * 0.2602437,
        size.width * 0.4062479,
        size.height * 0.2635417,
        size.width * 0.4124979,
        size.height * 0.2697917);
    path0.lineTo(size.width * 0.6197896, size.height * 0.4770833);
    path0.cubicTo(
        size.width * 0.6232625,
        size.height * 0.4805563,
        size.width * 0.6256917,
        size.height * 0.4840271,
        size.width * 0.6270813,
        size.height * 0.4875000);
    path0.cubicTo(
        size.width * 0.6284708,
        size.height * 0.4909729,
        size.width * 0.6291646,
        size.height * 0.4947917,
        size.width * 0.6291646,
        size.height * 0.4989583);
    path0.cubicTo(
        size.width * 0.6291646,
        size.height * 0.5031250,
        size.width * 0.6284708,
        size.height * 0.5069438,
        size.width * 0.6270813,
        size.height * 0.5104167);
    path0.cubicTo(
        size.width * 0.6256917,
        size.height * 0.5138896,
        size.width * 0.6232625,
        size.height * 0.5173604,
        size.width * 0.6197896,
        size.height * 0.5208333);
    path0.lineTo(size.width * 0.4135396, size.height * 0.7270833);
    path0.cubicTo(
        size.width * 0.4072896,
        size.height * 0.7333333,
        size.width * 0.3999979,
        size.height * 0.7362854,
        size.width * 0.3916646,
        size.height * 0.7359375);
    path0.cubicTo(
        size.width * 0.3833312,
        size.height * 0.7355896,
        size.width * 0.3756917,
        size.height * 0.7326396,
        size.width * 0.3687479,
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
