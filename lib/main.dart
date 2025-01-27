import 'package:demo/screens/setting/setting.dart';
import 'package:demo/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}
