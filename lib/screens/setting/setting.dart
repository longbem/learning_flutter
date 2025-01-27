import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cài đặt'),
        elevation: 4.0, // This sets the shadow at the bottom of the AppBar
        shadowColor:
            Colors.black, // You can customize the shadow color if needed
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Text("setting"),
        ),
      ),
    );
  }
}
