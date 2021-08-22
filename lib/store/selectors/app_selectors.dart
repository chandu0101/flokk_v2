import 'package:dstore/dstore.dart';
import 'package:flokk_v2/store/app_state.dart';
import 'package:flokk_v2/store/pstates/nav.dart';
part 'app_selectors.dstore.dart';

@Selectors()
class $_AppSelectors {
  static Nav nav(AppState state) => state.nav;
}
