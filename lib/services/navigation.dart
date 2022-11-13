import 'package:auto_route/auto_route.dart';
import 'package:produtech/app/app.gr.dart';
import 'package:produtech/app/locator.dart';


class NavigationService {
  static final serviceLocator = locator.get<AppRouter>();

  void replaceNamed(String path) {
    serviceLocator.replaceNamed(path);
  }

  void pushNamed(String path) {
    serviceLocator.pushNamed(path);
  }

  void pop() {
    serviceLocator.pop();
  }

  void navigateTo(PageRouteInfo page) {
    serviceLocator.push(
      page,
    );
  }
}