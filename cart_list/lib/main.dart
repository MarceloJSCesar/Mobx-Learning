import 'package:flutter/material.dart';
import './views/login_page.dart';
import './views/home_page.dart';

void main() => runApp(DartList());

class DartList extends StatelessWidget {
  @override
  MaterialApp build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      initialRoute: './login',
      routes: {
        './login': (ctx) => LoginPage(),
        '/home': (ctx) => HomeScreen()
      });
  }
}
