import 'package:flutter/material.dart';
import 'package:flutter_application_hellolist_1/homepage.dart';

void main() {
  runApp(const MaterialApp(
    home: MyAhmad(),
  ));
}

class MyAhmad extends StatefulWidget {
  const MyAhmad({super.key});

  @override
  State<MyAhmad> createState() => _MyAhmadState();
}

class _MyAhmadState extends State<MyAhmad> {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Iphone',
      'Samsung',
      'Xioami',
      'Nokia',
      'Vivo',
      'Oppo',
      'Realme',
      'OnePlus',
      'Infinix'
    ];
    final List<int> colorCodes = <int>[
      900,
      800,
      700,
      600,
      500,
      400,
      300,
      200,
      100
    ];
    //final List<int> entries = <int> [1, 2 , 3];
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Ahmad"),
      ),
      //body: ListView(),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        //scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(15),
        //padding: EdgeInsets.only(left: 15),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Homepage(),
                ),
              );
            },
            child: Container(
              height: 250,
              width: 250,
              //color: Colors.amber[600],
              color: Colors.blue[colorCodes[index]],
              child: Center(child: Text(entries[index])),
            ),
          );
        },
      ),
    );
  }
}

// stl ful