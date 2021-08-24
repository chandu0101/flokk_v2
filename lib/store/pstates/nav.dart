import 'package:dstore/dstore.dart';
import 'package:dstore_flutter/dstore_flutter.dart';
import 'package:flokk_v2/screens/home_screen.dart';
import 'package:flokk_v2/screens/login_screen.dart';
import 'package:flokk_v2/screens/unkown_screen.dart';
import 'package:flokk_v2/store/app_state.dart';
import 'package:flutter/material.dart' hide Action;
part 'nav.ps.dstore.dart';

@PState(nav: true)
class $_Nav extends NavStateI {
  @Url("/unkown")
  void notFound() {
    this.page = MaterialPage(key: ValueKey("unkonw"), child: UnkownScreen());
  }

  @Url("/", isProtected: true)
  void home() {
    this.page = MaterialPage(key: ValueKey("home"), child: HomeScreen());
  }

  @Url("/login")
  void login() {
    this.page = MaterialPage(key: ValueKey("unkonw"), child: LoginScreen());
  }

  @override
  AuthMeta authMeta(NavCommonI navState) {
    return AuthMeta(
        action: NavActions.login(),
        isAuthenticated: (state) {
          print("calling isAuth");
          final s = state as AppState;
          return s.auth.loggedIn;
        });
  }

  @override
  Action notFoundAction(Uri uri) {
    return NavActions.notFound();
  }
}
