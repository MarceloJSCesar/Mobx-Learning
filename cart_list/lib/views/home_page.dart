import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Scaffold build(BuildContext ctx) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18
            ),
            ),
            TextButton(
              child: Text('Sign out'),
              onPressed: () => Navigator.pushNamed(ctx, './login'),
            ),
          ],
        ),
      ),
    );
  }
}