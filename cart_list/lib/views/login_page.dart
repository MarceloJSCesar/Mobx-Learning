import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../models/controller.dart';

class LoginPage extends StatelessWidget {
  final controller = Controller();
  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (ctx) {
          return Container(
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Mobx',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                _height(20),
                _textField(
                    labelText: 'Name',
                    onChanged: controller.client.changeName,
                    errorText: controller.validateName),
                _height(20),
                _textField(
                    labelText: 'Email',
                    onChanged: controller.client.changeEmail,
                    errorText: controller.validateEmail),
                _height(20),
                _textField(
                    labelText: 'Address',
                    onChanged: controller.client.changeAddress,
                    errorText: controller.validateAddress),
                _height(40),
                TextButton(
                    style: ButtonStyle(
                      backgroundColor: controller.isValid
                          ? MaterialStateProperty.all<Color>(Colors.red)
                          : MaterialStateProperty.all<Color>(
                              Colors.transparent),
                    ),
                    child: Text('Login'),
                    onPressed: controller.isValid
                        ? () {
                            Navigator.pushNamed(ctx, '/home');
                          }
                        : null),
              ],
            ),
          );
        },
      ),
    );
  }

  SizedBox _height(double height) => SizedBox(height: height);

  TextField _textField(
      {String labelText, onChanged, String Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }
}
