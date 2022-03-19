import 'package:flutter/material.dart';

class InstagramPage extends StatelessWidget {
  const InstagramPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/insta.png'),
              const Text('Instagram'),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text('Instagram風の通知を作ってみよ！',
              style: TextStyle(fontSize: 18),),
              const SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                    labelText: 'ユーザID',
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )
                ),
                onChanged: (text){},
              ),
              const SizedBox(height: 25),
              TextField(
                decoration: InputDecoration(
                    labelText: 'ユーザ名',
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )
                ),
                onChanged: (text){},
              ),
              const SizedBox(height: 25),
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 6,
                decoration: InputDecoration(
                    labelText: '内容',
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )
                ),
                onChanged: (text){},
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {},
                child: const Text('次へ'),
              ),

            ],
          ),
        )
    );
  }
}