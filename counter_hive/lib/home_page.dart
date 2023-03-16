import 'package:counter_hive/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App")),
      body: Consumer<CounterProvider>(builder: (context, provider, _) {
        return ListView(children: [
          Center(
            child: Text(
              '${provider.getCounter}',
              style: TextStyle(fontSize: 48),
            ),
          ),
          SizedBox(height: 200),
          ElevatedButton.icon(
              onPressed: () {
                provider.saveCounter();
                provider.saveSwitch();
              },
              icon: Icon(Icons.save),
              label: Text('Guardar')),
          OutlinedButton.icon(
              onPressed: () {
                provider.loadSwitch();
                provider.loadCounter();
              },
              icon: Icon(Icons.upload),
              label: Text('Cargar')),
          Switch(
              value: provider.getSwitch,
              onChanged: (value) {
                provider.setSwitch(value);
              })
        ]);
      }),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            context.read<CounterProvider>().incrementCounter();
          }),
    );
  }
}
