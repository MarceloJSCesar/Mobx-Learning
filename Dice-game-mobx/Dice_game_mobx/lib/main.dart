import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import './models/dice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _diceCounter = DiceCounter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Dice game with mobx',
          style: TextStyle(
            fontSize: 17
          ),
          ),
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      child: Observer(
                        builder: (_) {
                          return Image.asset(
                              'images/dice${_diceCounter.left}.png');
                        },
                      ),
                      onPressed: () => _diceCounter.roll(),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      child: Observer(
                        builder: (_) {
                          return Image.asset(
                              'images/dice${_diceCounter.right}.png');
                        },
                      ),
                      onPressed: () => _diceCounter.roll(),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Observer(
                  builder: (_) => Text(
                    'Total: ${_diceCounter.total}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 17.0
                  ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
