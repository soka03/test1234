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
          title: Row(
            children: [
              Text(style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold), '금호동 3가'),
              IconButton(onPressed: () {}, icon:Icon(Icons.expand_more)),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
          ]
        ),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child : Image.asset(
                    '7059807193_4366334379_e8067b85beafb783bef5b57ff736f41b.jpg',
                    width: 150, height: 170,
                      fit: BoxFit.cover
                  )
                ),
                SizedBox(width:10),
                Row(
                  children: [
                    SizedBox(
                      height: 170,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            SizedBox(
                              width: 250,
                              height: 60,
                              child: Text('캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함) ',
                                style: TextStyle(fontSize: 20), softWrap: true, overflow: TextOverflow.clip
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              child: Text('성동구 형당동  끌올 10분 전 ',
                                style: TextStyle(color: Colors.grey)
                              )
                            ),
                            SizedBox(
                              height: 40,
                              child: Text('210,000원',
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ),

                            SizedBox(
                              width: 300,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border, color: Colors.grey,)),
                                  Text('4' ,style: TextStyle(color: Colors.grey))
                                ],
                              ),
                            )
                      ]),
                    )
                  ],
                ),

              ],
          ),
        )
      )
    );

  }
}
