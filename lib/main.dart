import 'package:dstore_flutter/dstore_flutter.dart';
import 'package:flokk_v2/store/app_state.dart';
import 'package:flokk_v2/store/selectors/app_selectors.dart';
import 'package:flutter/material.dart';

void main() {
  configureNav();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: MaterialApp.router(
            routeInformationParser: DStoreRouteInformationParser(),
            routerDelegate: DRouterDelegate(selector: AppSelectors.nav)));
  }
}
