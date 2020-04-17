import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static RandomColor _colorGenerator = RandomColor();

  Color _color = Colors.yellow;
  String _animationName = '';

  void _animationCallback(String name) {
      if (name == 'go') {
        setState(() {
          _animationName = 'idle';
        });
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: GestureDetector(
        onTap: () {
          setState(() {
            _color = _colorGenerator.randomColor(
                colorSaturation: ColorSaturation.highSaturation,
                colorBrightness: ColorBrightness.dark
              );

            _animationName = 'go';
          });
        },
        child: Container(
          color: _color,
          child: FlareActor(
            'animations/tada2.flr',
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: _animationName,
            callback: _animationCallback,
            ),
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
