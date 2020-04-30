import 'package:flutter/material.dart';
import 'package:new_geolocation/geolocation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Test(),
    );
  }
}

class Test extends StatefulWidget {
  Test() {
    Geolocation.loggingEnabled = true;
  }

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: FlatButton(
          color: Colors.blue,
          child: Text(
            "Enable location services",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: enableLocationServices,
        ),
      ),
    );
  }

  enableLocationServices() async {
    Geolocation.enableLocationServices().then((result) {}).catchError((e) {});
  }
}
