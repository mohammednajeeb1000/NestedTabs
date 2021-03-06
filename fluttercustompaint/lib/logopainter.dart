import 'package:flutter/material.dart';
import 'dart:math';

class LogoPainter extends CustomPainter {
  Paint _paint;
  double _lineOnefraction, _lineTwofraction, _blueCirclefraction,_greenBarfraction;

  LogoPainter(
      this._lineOnefraction, this._lineTwofraction, this._blueCirclefraction,this._greenBarfraction) {
    _paint = Paint()
      ..color = Color(0xffaecbf7)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 9;
  }
  @override
  void paint(Canvas canvas, Size size) {
       canvas.drawLine(
      Offset(25.0, 200.0),
      Offset(25.0, 400.0),
      _paint,
    );
    canvas.drawLine(
      Offset(55.0, 200.0),
      Offset(55.0, 400.0),
      _paint,
    );
    canvas.drawLine(
      Offset(7.0, _lineOnefraction),
      Offset(70.0, _lineOnefraction),
      _paint,
    );
    canvas.drawLine(
      Offset(7.0, _lineTwofraction),
      Offset(70.0, _lineTwofraction),
      _paint,
    );

    var rect = Rect.fromLTWH(75, 200.0, 60.0, _blueCirclefraction * 200.0);
    _paint.color = Color(0xffACCAF6);
    _paint.style = PaintingStyle.fill;
    canvas.drawRect(rect, _paint);

    _paint.color = Color(0xff4184f2);
    var topCircle = Offset(105.0, 170.0);
    _paint.style = PaintingStyle.fill;
    canvas.drawCircle(topCircle, _blueCirclefraction * 30.0, _paint);

    _paint.color = Color(0xffe5453f);
    _paint.style = PaintingStyle.fill;
    var circlerect = Offset(135, 250.0) & Size(130.0, 130.0);
    canvas.drawArc(
        circlerect, -pi / 3, pi * 3 * _blueCirclefraction, false, _paint);

    var yellowrect = Rect.fromLTWH(265, 200.0, 50.0, _blueCirclefraction*200.0);
    _paint.color = Color(0xffFCECC4);
    _paint.style = PaintingStyle.fill;
    canvas.drawRect(yellowrect, _paint);

    var path = Path();
    path.moveTo(315.0, 140.0);
    path.lineTo(290.0, 140.0);
    path.lineTo(250.0, 200.0);
    path.lineTo(315.0, 200.0);
    _paint.color = Color(0xfff9be52);
    _paint.style = PaintingStyle.fill;
    canvas.drawPath(path, _paint);

    _paint.color = Color(0xff3ea752);
    var greencenter = Offset(360,185.0);
    _paint.style=PaintingStyle.fill;
    canvas.drawCircle(greencenter, _blueCirclefraction*45.0, _paint);

    var greenpath = Path();
      greenpath.moveTo(_greenBarfraction*360.0,_greenBarfraction*135.0);
      greenpath.lineTo(_greenBarfraction*360.0,_greenBarfraction*400.0);
       greenpath.lineTo(_greenBarfraction*420.0,_greenBarfraction*400.0);
      greenpath.lineTo(_greenBarfraction*420.0,_greenBarfraction*160.0);
       _paint.color = Color(0xffcdead6);
      _paint.style=PaintingStyle.fill;
      canvas.drawPath(greenpath, _paint);
  }

  @override
  bool shouldRepaint(LogoPainter oldDelegate) {
    return oldDelegate._lineOnefraction != _lineOnefraction;
  }
}
