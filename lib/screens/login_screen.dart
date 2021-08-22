import 'package:flokk_v2/store/pstates/nav.dart';
import 'package:flokk_v2/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:dstore_flutter/dstore_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabOrMobile = TabOrMobile();
    return Responsive(
        tablet: tabOrMobile, desktop: Desktop(), mobile: TabOrMobile());
  }
}

class Desktop extends StatelessWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(child: Text("one")),
        TextButton(
            onPressed: () {
              context.dispatch(NavActions.home());
            },
            child: Text("home")),
        Expanded(child: Text("two")),
      ],
    ));
  }
}

class TabOrMobile extends StatelessWidget {
  const TabOrMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("MObile"),
    ));
  }
}
