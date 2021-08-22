import 'package:flokk_v2/store/pstates/nav.dart';
import 'package:flutter/material.dart';
import 'package:dstore_flutter/dstore_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                context.dispatch(NavActions.login());
              },
              child: Text("login"))
        ],
      ),
    );
  }
}
