import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Text("Hello World"),
  ));
}

class MyWidget extends StatelessWidget {
  final bool loading;

  const MyWidget(this.loading, {super.key});

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return CircularProgressIndicator();
    } else {
      return Text("Hello World");
    }
  }
}
