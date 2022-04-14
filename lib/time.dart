import 'dart:math';

import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  const Time({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 100, bottom: 50),
            child: Column(
              children: const [
                Text(
                  '偽通知をする時間を設定します',
                  style: TextStyle(color: Colors.green),
                ),
                Text('時計を回して設定してください')
              ],
            ),
          ),
          SizedBox(
            height: 450,
            child: AspectRatio(
              aspectRatio: 1.0,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: CustomPaint(
                      painter: BellsAndLegs(),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amber,
                      boxShadow: [
                        BoxShadow(offset: Offset(0.0, 5.0), blurRadius: 50.0),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Image.network('https://watch.onl.jp/hour00.png'),
                        Image.network('https://watch.onl.jp/base00.png'),
                        Image.network('https://watch.onl.jp/minute00.png'),
                        Image.network('https://watch.onl.jp/second00.png')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('保存'))
        ],
      ),
    );
  }
}

class BellsAndLegs extends CustomPainter {
  final Paint bellPaint;
  final Paint legPaint;

  BellsAndLegs()
      : bellPaint = Paint(),
        legPaint = Paint() {
    bellPaint.color = const Color(0xFF333333);
    bellPaint.style = PaintingStyle.fill;

    legPaint.color = const Color(0xFF555555);
    legPaint.style = PaintingStyle.stroke;
    legPaint.strokeWidth = 10.0;
    legPaint.strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.width / 2;
    canvas.save();
    canvas.translate(radius, radius);
    canvas.rotate(2 * pi / 12);
    drawerBellsAndLegs(radius, canvas);
    canvas.rotate(-4 * pi / 12);
    drawerBellsAndLegs(radius, canvas);

    drawerBellsAndLegs(radius, canvas);
    canvas.restore();
  }

  void drawerBellsAndLegs(radius, canvas) {
    Path bell = Path();
    Path leg1 = Path();
    bell.moveTo(-55.0, -radius - 5);
    bell.lineTo(55.0, -radius - 5);
    bell.quadraticBezierTo(0.0, -radius - 75, -55.0, -radius - 10);

    leg1.addOval(
        Rect.fromCircle(center: Offset(0.0, -radius - 50), radius: 3.0));
    leg1.moveTo(0.0, -radius - 50);
    leg1.lineTo(0.0, radius + 50);
    canvas.drawPath(leg1, legPaint);
    canvas.drawPath(bell, bellPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
