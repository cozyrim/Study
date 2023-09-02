import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.star),
          title : Text('금호동3가'),
          actions: [Icon(Icons.search), Icon(Icons.menu), Icon(Icons.doorbell)],
        ),
        body: Container(
          height: 150,
          padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset('camera.jpg', width: 150,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함)', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
                        Text('성동구 행당동 끝올 10분 전'),
                        Text('210,000원'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.favorite_border),
                            Text('4'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page),
              ],
            ),
          ),
        ),
      ),
    );
  }
}