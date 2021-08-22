import 'package:flutter/material.dart';

class UnkownScreen extends StatelessWidget {
  const UnkownScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unkown Screen"),
      ),
      body: Center(
        child: Text("Wrong Path"),
      ),
    );
  }
}
