import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import './models/counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final Counter counter = Counter();
  String get _showValue {
    final textCounter = counter.value;
    if (counter.value < 0) {
      return '$textCounter';
    } else {
      return '$textCounter';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Counter with mobx',
          style: TextStyle(fontSize: 17),
        ),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _raisedButton(
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    size: 40,
                  ),
                  function: () => counter.desincrement()),
              Observer(builder: (_) {
                return Text(
                  _showValue,
                  style: TextStyle(fontSize: 30, color: Colors.white),
                );
              }),
              _raisedButton(
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    size: 40,
                  ),
                  function: () => counter.increment())
            ]),
      ),
    );
  }

  RaisedButton _raisedButton({Widget icon, Function function}) {
    return RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      onPressed: function,
      child: icon,
    );
  }
}
