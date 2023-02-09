import 'package:flutter/material.dart';
import 'package:info_lugar/info_lugar.dart';
import 'package:info_lugar/item_actividad.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> _listElements = [
    {
      "day": "Day 1",
      "image":
          "https://travel.home.sndimg.com/content/dam/images/travel/stock/2016/10/14/0/GettyImages_George-Rinhart_530787206_Psycho-House.jpg.rend.hgtvcom.966.725.suffix/1491594472390.jpeg",
      "name": "Bates Motel"
    },
    {
      "day": "Day 2",
      "image":
          "https://travel.home.sndimg.com/content/dam/images/travel/stock/2016/10/14/0/GettyImages-FILIPPO-MONTEFORTE-492559563_Palazzo-Vecchio.jpg.rend.hgtvcom.966.644.suffix/1491594472244.jpeg",
      "name": "Palazzo Vecchio"
    },
    {
      "day": "Day 3",
      "image":
          "https://travel.home.sndimg.com/content/dam/images/travel/stock/2016/10/14/0/GettyImages-Paul-Hawthorne_53314646_Amityville-Horror-House.jpg.rend.hgtvcom.966.725.suffix/1491594472413.jpeg",
      "name": "The Amityville House"
    },
    {
      "day": "Day 4",
      "image":
          "https://travel.home.sndimg.com/content/dam/images/travel/stock/2016/10/14/0/GettyImages-Robert-Holmes-Corbis-VCG_521871368_Dakota-NYC.jpg.rend.hgtvcom.966.644.suffix/1491594472079.jpeg",
      "name": "The Dakota"
    },
    {
      "day": "Day 5",
      "image":
          "https://travel.home.sndimg.com/content/dam/images/travel/stock/2016/10/14/0/GettyImages-John-Edward-Linden_534279154_Griffith-Park-Los-Angeles.jpg.rend.hgtvcom.966.644.suffix/1491594472427.jpeg",
      "name": "Haddonfield, Illinois"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva tu hotel'),
      ),
      body: LayoutBuilder(
        builder: (context, raints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: FractionallySizedBox(
                  heightFactor: .25,
                  widthFactor: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: FittedBox(
                      child: Container(
                          color: Colors.green,
                          child: Image.network(
                            "https://content.r9cdn.net/rimg/dimg/78/70/001b704a-city-15939-1629b33a69c.jpg?width=1366&height=768&xhint=1779&yhint=1365&crop=true",
                          )),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              // para poder poner column o listview en stack hay que encerrarlas en positioned y anclarla a todos lados
              Positioned(
                top: 64,
                bottom: 0,
                left: 0,
                right: 0,
                child: ListView(
                  children: [
                    InfoLugar(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Details"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.grey[200],
                          ),
                        ),
                        Text("Walkthrough Flight Detail"),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _listElements.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemActividad(
                              day: _listElements[index]["day"]!,
                              image: _listElements[index]["image"]!,
                              name: _listElements[index]["name"]!);
                        },
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content: Text("Reservación en progreso")));
                      },
                      child: Text(
                        "Start booking",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
