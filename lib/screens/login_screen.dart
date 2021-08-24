import 'package:flokk_v2/store/pstates/auth.dart';
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
        Expanded(child: DeskLeft()),
        TextButton(
            onPressed: () {
              // context.dispatch(Auth2Actions.logIn());
              print("done login");
              context.dispatch(NavActions.home());
            },
            child: Text("home2")),
        Expanded(child: Text("two")),
      ],
    ));
  }
}

class DeskLeft extends StatelessWidget {
  const DeskLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: const EdgeInsets.only(left: 50, top: 50),
          child: Text(
            "Flokk",
            style: TextStyle(
                color: Colors.green[900],
                fontSize: 27,
                fontWeight: FontWeight.bold),
          )),
      Expanded(child: Image.asset("assets/images/onboarding-birds.png"))
    ]);
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
