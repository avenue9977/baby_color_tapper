import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static RandomColor _randomColor = RandomColor();

  Color _color = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: GestureDetector(
        onTap: () {
          setState(() {
            _color = _randomColor.randomColor(
                colorSaturation: ColorSaturation.highSaturation,
                colorBrightness: ColorBrightness.dark
              );
          });
        },
        child: Container(
          color: _color,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.deepOrange[700],
        child: Container(
          height: 60.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[700],
        onPressed: () => setState(() {
          // TODO Implement logic for locking the display
        }),
        child: Icon(
          Icons.lock_open,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
