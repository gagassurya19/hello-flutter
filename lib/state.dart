import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter'),
          ),
          body: Center(
            child: BigText(
              text: 'test123',
            ),
          )),
    );
  }
}

// Stateles Widget
class Heading extends StatelessWidget {
  final String thisIsText;

  // constructor
  Heading({required this.thisIsText});

  Widget build(BuildContext context) {
    return Text(
      thisIsText,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
    );
  }
}

// Statefull Widget
class BigText extends StatefulWidget {
  final String text;

  const BigText({required this.text});

  _BigTextState createState() => _BigTextState();
}

class _BigTextState extends State<BigText> {
  double _textSize = 16;

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _textSize = 32;
              });
            },
            child: Text('Bigger'))
      ],
    );
  }
}
