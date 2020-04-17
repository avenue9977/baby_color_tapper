import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.deepPurple,
    body: Center(
      child: Text('You have pressed the button $_counter times.'),
    ),
    bottomNavigationBar: BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(height: 60.0,),
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.yellow[700],
      onPressed: () => setState(() {
        _counter++;
      }),
      child: Icon(Icons.lock_open),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  );
  }
}
