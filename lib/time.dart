import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  const Time({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 100, bottom: 50),
              child: Column(
                children: [
                  Text(
                    '偽通知をする時間を設定します',
                    style: TextStyle(color: Colors.green),
                  ),
                  Text('時計を回して設定してください')
                ],
              ),
            ),
            SizedBox(
              height: 500,
              child: AspectRatio(
                aspectRatio: 1.0,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0.0, 5.0), blurRadius: 50.0),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text('保存'))
          ],
        ),
      ),
    );
  }
}
