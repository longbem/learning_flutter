import 'package:flutter/material.dart';
import 'package:demo/navigation/nav.dart';

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const NavBottomApp(),
    );
  }
}
