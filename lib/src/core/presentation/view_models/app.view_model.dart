import 'view_model.dart';
import 'view_state.dart';

class AppViewModel extends ViewModel {
  int _pageIndex = 0;

  AppViewModel() {
    viewState = ViewState.Completed;
  }

  int get pageIndex => _pageIndex;

  set pageIndex(int newPageIndex) {
    _pageIndex = newPageIndex;
    viewState = ViewState.Completed;
    notifyListeners();
  }
}
