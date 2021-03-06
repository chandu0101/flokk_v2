import 'package:dstore/dstore.dart';
import 'package:dstore_flutter/dstore_flutter.dart';
import 'package:flokk_v2/store/pstates/auth.dart';
import 'package:flokk_v2/store/pstates/nav.dart';

part "app_state.dstore.dart";

@AppStateAnnotation()
void $_AppState(Nav nav, Auth2 auth) {}

final store = createStore(
    handleError: (derror) {
      print("Error in store $derror");
    },
    middlewares: [navigaionMiddleware]);
