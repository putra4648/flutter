import 'package:e_commerce/layout/home_screen.dart';
import 'package:e_commerce/layout/login_screen.dart';
import 'package:e_commerce/layout/register_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        backgroundColor: Colors.purple,
        primaryIconTheme: IconThemeData(
          color: Colors.white,
        ),
        accentColor: Colors.white,
        iconTheme: Theme.of(context).primaryIconTheme,
      ),
      home: HomeScreen(),
      /* initialRoute: '/loginScreen',
      routes: {
        '/loginScreen': (context) => LoginScreen(),
        '/registerScreen': (context) => RegisterScreen(),
        '/homeScreen': (context) => HomeScreen(),
      }, */
    );
  }
}
