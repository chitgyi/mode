import 'package:flutter/cupertino.dart';
import 'package:mode/core/navigator/paths.const.dart';

class AppBloc with ChangeNotifier {
  int selecedPageIndex = 0;

  setPageIndex(int index) {
    selecedPageIndex = index;
    notifyListeners();
  }

  void setRouteInformation(BuildContext context) {
    final routeInformationProvider =
        Router.of(context).routeInformationProvider;
    switch (selecedPageIndex) {
      case 1:
        routeInformationProvider!.routerReportsNewRouteInformation(
          RouteInformation(location: PlaylistPath),
        );
        break;
      case 2:
        routeInformationProvider!.routerReportsNewRouteInformation(
          RouteInformation(location: ProfilePath),
        );
        break;
      case 0:
      default:
        routeInformationProvider!.routerReportsNewRouteInformation(
          RouteInformation(location: SongsPath),
        );
        break;
    }
  }
}
