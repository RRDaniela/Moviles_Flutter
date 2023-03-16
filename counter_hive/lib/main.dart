import 'package:counter_hive/counter_provider.dart';
import 'package:counter_hive/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter();
  runApp(ChangeNotifierProvider(
    create: (context) => CounterProvider()
      ..loadCounter()
      ..loadSwitch(),
    child: Main(),
  ));
}

class Main extends StatelessWidget {
  Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Counter App', home: HomePage());
  }
}
