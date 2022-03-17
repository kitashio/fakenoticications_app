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
              child: Container(
                color: Colors.black,
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text('保存'))
          ],
        ),
      ),
    );
  }
}
