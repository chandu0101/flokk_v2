import 'package:dstore/dstore.dart';
part 'auth.ps.dstore.dart';

@PState()
class $_Auth2 {
  bool loggedIn = false;

  void logIn() {
    this.loggedIn = true;
  }

  void logOut() {
    this.loggedIn = false;
  }
}
