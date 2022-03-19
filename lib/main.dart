import 'package:fakenoticications_app/const/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'instagram_page.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fake Notification',
      theme: ThemeData(
        primarySwatch: customSwatch,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        centerTitle: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: const Text(
          'ようこそ！',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      //backgroundColor: customSwatch[600],
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[200],
              child: const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  '偽通知を作る',
                  style: TextStyle(
                    // decoration: TextDecoration.underline,
                    // decorationStyle: TextDecorationStyle.double,
                    decorationColor: customSwatch,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.grey[200],
              child: GridView.count(
                shrinkWrap: true,
                // gridDelegate:
                //     const SliverGridDelegateWithFixedCrossAxisCount(
                //   crossAxisCount: 2,
                // ),
                childAspectRatio: 1.3,
                crossAxisCount: 2,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 20,
                      shadowColor: customSwatch,
                      color: Colors.grey,
                      child: Row(
                        children: [
                          const VerticalDivider(
                            color: customSwatch,
                            thickness: 3,
                            width: 30,
                            indent: 30,
                            endIndent: 30,
                          ),
                          Image.asset('assets/line.png'),
                          const SizedBox(width: 8),
                          const Text(
                            "ライン",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InstagramPage()),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 20,
                      shadowColor: customSwatch,
                      color: Colors.grey,
                      child: Row(
                        children: [
                          const VerticalDivider(
                            color: customSwatch,
                            thickness: 3,
                            width: 30,
                            indent: 30,
                            endIndent: 30,
                          ),
                          Image.asset('assets/insta.png'),
                          const SizedBox(width: 8),
                          const Text(
                            "インスタ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 20,
                      shadowColor: customSwatch,
                      color: Colors.grey,
                      child: Row(
                        children: const [
                          VerticalDivider(
                            color: customSwatch,
                            thickness: 3,
                            width: 30,
                            indent: 30,
                            endIndent: 30,
                          ),
                          Text(
                            "Line",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 20,
                      shadowColor: customSwatch,
                      color: Colors.grey,
                      child: Row(
                        children: const [
                          VerticalDivider(
                            color: customSwatch,
                            thickness: 3,
                            width: 30,
                            indent: 30,
                            endIndent: 30,
                          ),
                          Text(
                            "Line",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 20,
                      shadowColor: customSwatch,
                      color: Colors.grey,
                      child: Row(
                        children: const [
                          VerticalDivider(
                            color: customSwatch,
                            thickness: 3,
                            width: 30,
                            indent: 30,
                            endIndent: 30,
                          ),
                          Text(
                            "Line",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // GestureDetector(
                  //   onTap: () {},
                  //   child: const Card(
                  //     color: customSwatch,
                  //     child: Text("Line",
                  //         style: TextStyle(
                  //             color: Colors.black,
                  //             fontSize: 30,
                  //             fontWeight: FontWeight.bold)),
                  //   ),
                  // ),
                  // GestureDetector(
                  //   onTap: () {},
                  //   child: const Card(
                  //     color: customSwatch,
                  //     child: Text("Line",
                  //         style: TextStyle(
                  //             color: Colors.black,
                  //             fontSize: 30,
                  //             fontWeight: FontWeight.bold)),
                  //   ),
                  // ),
                  // GestureDetector(
                  //   onTap: () {},
                  //   child: const Card(
                  //     color: customSwatch,
                  //     child: Text("Line",
                  //         style: TextStyle(
                  //             color: Colors.black,
                  //             fontSize: 30,
                  //             fontWeight: FontWeight.bold)),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
