import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int likecounter = 0;
  bool tap1 = false;
  bool tap2 = false;
  bool tap3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bienvenidos al ITESO"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 179,
                child: Row(
                  children: [
                    Expanded(
                      child: Image.network(
                          "https://iteso.mx/image/journal/article?img_id=16128044&t=1558394499096",
                          fit: BoxFit.fitWidth),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        "El ITESO Universidad jesuita de Guadalajara",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  color: tap1 ? Colors.indigo : Colors.black,
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    tap1 = !tap1;
                                    setState(() {});
                                    ScaffoldMessenger.of(context)
                                      ..hideCurrentSnackBar()
                                      ..showSnackBar(SnackBar(
                                          content: Text(
                                              "Puedes encontrar comida en sus cafeterías")));
                                  },
                                  iconSize: 70,
                                  icon: Icon(Icons.food_bank)),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Comida",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  padding: EdgeInsets.zero,
                                  color: tap2 ? Colors.indigo : Colors.black,
                                  onPressed: () {
                                    tap2 = !tap2;
                                    setState(() {});
                                    ScaffoldMessenger.of(context)
                                      ..hideCurrentSnackBar()
                                      ..showSnackBar(SnackBar(
                                          content: Text(
                                              "Puedes pedir información en rectoría")));
                                  },
                                  iconSize: 70,
                                  icon: Icon(Icons.info)),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Información",
                                  style: TextStyle(fontSize: 12))
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  padding: EdgeInsets.zero,
                                  color: tap3 ? Colors.indigo : Colors.black,
                                  onPressed: () {
                                    tap3 = !tap3;
                                    setState(() {});
                                    ScaffoldMessenger.of(context)
                                      ..hideCurrentSnackBar()
                                      ..showSnackBar(SnackBar(
                                          content: Text(
                                              "Se encuentra ubicado en Periférico Sur 8585")));
                                  },
                                  iconSize: 70,
                                  icon: Icon(Icons.location_history)),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Ubicación", style: TextStyle(fontSize: 12))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        "El ITESO, Universidad Jesuita de Guadalajara, es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. La institución forma parte del Sistema Universitario Jesuita que integra a ocho universidades en México.",
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Contador de likes:"),
                          IconButton(
                              onPressed: () {
                                likecounter += 1;
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.thumb_up_sharp,
                                color: Colors.pinkAccent,
                              )),
                          IconButton(
                              onPressed: () {
                                likecounter -= 1;
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.thumb_down_sharp,
                                color: Colors.orange,
                              )),
                          Text("$likecounter")
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
