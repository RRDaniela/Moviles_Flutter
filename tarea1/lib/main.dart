import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool tap_1 = false;
  bool tap_2 = false;
  bool tap_3 = false;
  bool tap_4 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mc Flutter'),
        ),
        body: ListView(
          children: [
            Card(
              elevation: 0,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0)),
                  side: BorderSide(width: 2, color: Colors.black45)),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(50.0, 2.0, 50.0, 2.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            icon: Icon(Icons.person),
                            onPressed: () {},
                            color: Colors.white,
                          ),
                        ),
                        title: Text(
                          "Flutter McFlutter",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                        subtitle: Text(
                          "Experienced App Developer",
                          style: TextStyle(fontSize: 11.5),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("123 Main Street"),
                        Text("(415) 555-01098")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            color: tap_1 ? Colors.indigo : Colors.black,
                            onPressed: () {
                              tap_1 = !tap_1;
                              setState(() {});
                            },
                            icon: Icon(Icons.person)),
                        IconButton(
                            color: tap_2 ? Colors.indigo : Colors.black,
                            onPressed: () {
                              tap_2 = !tap_2;
                              setState(() {});
                            },
                            icon: Icon(Icons.timer)),
                        IconButton(
                            color: tap_3 ? Colors.indigo : Colors.black,
                            onPressed: () {
                              tap_3 = !tap_3;
                              setState(() {});
                            },
                            icon: Icon(Icons.phone_android_rounded)),
                        IconButton(
                            color: tap_4 ? Colors.indigo : Colors.black,
                            onPressed: () {
                              tap_4 = !tap_4;
                              setState(() {});
                            },
                            icon: Icon(Icons.phone_android))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
