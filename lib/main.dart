import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Time '),
      ),
      body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Text(
              "A small app , tells current time for any and all time zones!",
              style: new TextStyle(
                  fontSize: 51.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
            ),
            new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Time Zone",
                    style: new TextStyle(
                        fontSize: 40.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                  ),
                  new DropdownButton<String>(
                    onChanged: popupButtonSelected,
                    value: "Child 1",
                    style: new TextStyle(
                        fontSize: 20.0,
                        color: const Color(0xFF202020),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"),
                    items: <DropdownMenuItem<String>>[
                      const DropdownMenuItem<String>(
                          value: "Child 1", child: const Text("Child 1")),
                      const DropdownMenuItem<String>(
                          value: "Child 2", child: const Text("Child 2")),
                      const DropdownMenuItem<String>(
                          value: "Child 3", child: const Text("Child 3")),
                    ],
                  ),
                  new Theme(
                    data: new ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.blue,
                      primaryColor: const Color(0xFF212121),
                      accentColor: const Color(0xFF540808),
                      canvasColor: const Color(0xFF303030),
                      fontFamily: 'Merriweather',
                    ),
                    child: new Opacity(
                      opacity: 0.24,
                      child: new Container(
                        child: new Text(
                          "11:30",
                          style: new TextStyle(
                              fontSize: 62.0,
                              color: const Color(0xFF0b0f15),
                              fontWeight: FontWeight.w900,
                              fontFamily: "Roboto"),
                        ),
                        padding: const EdgeInsets.all(0.0),
                        alignment: Alignment.center,
                      ),
                    ),
                  )
                ])
          ]),
      floatingActionButton: new FloatingActionButton(
          backgroundColor: const Color(0xFFce1f1f),
          child: new Icon(Icons.attach_file),
          onPressed: fabPressed),
    );
  }

  void popupButtonSelected(String? value) {}

  void fabPressed() {}
}
