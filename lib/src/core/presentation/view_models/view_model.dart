import 'package:flutter/foundation.dart';

import 'view_state.dart';

abstract class ViewModel with ChangeNotifier {
  /* defaut loading viewState is
  ///   ViewState viewState = ViewState.Loading;
  */
  ViewState viewState = ViewState.Loading;
  String? errorMsg;
}
