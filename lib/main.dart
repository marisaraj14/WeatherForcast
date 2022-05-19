import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:weather/data_service.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _cityTextControlled = TextEditingController();
  final _dataservice = DataService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
          appBar: AppBar(title: Text('Weather Forcaster')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 50),
                    child: SizedBox(
                        width: 150,
                        child: TextField(
                          controller: _cityTextControlled,
                          decoration: InputDecoration(labelText: 'Enter City'),
                          textAlign: TextAlign.center,
                        ))),
                ElevatedButton(onPressed: _search, child: Text('Search'))
              ],
            ),
          )),
    );
  }

  void _search() {
    //Sending city as parameter
    _dataservice.getWeather(_cityTextControlled.text);
  }
}
