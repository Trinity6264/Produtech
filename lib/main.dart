import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:produtech/app/app.gr.dart';
import 'package:produtech/app/locator.dart';
import 'package:produtech/controllers/auth/login_controller.dart';
import 'package:produtech/controllers/auth/pick_favorite_controller.dart';
import 'package:produtech/controllers/auth/register_controller.dart';
import 'package:produtech/controllers/dashboard/basket/basket_controller.dart';
import 'package:produtech/controllers/dashboard/dashboard_controller.dart';
import 'package:produtech/controllers/dashboard/explore/explore_controller.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  registerSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = locator.get<AppRouter>();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginViewController>.value(value: LoginViewController()),
        ChangeNotifierProvider<RegisterViewController>.value(value: RegisterViewController()),
        ChangeNotifierProvider<PickFavoriteController>.value(value: PickFavoriteController()),
        ChangeNotifierProvider<DashBoardViewController>.value(value: DashBoardViewController()),
        ChangeNotifierProvider<ExploreViewController>.value(value: ExploreViewController()),
        ChangeNotifierProvider<BasketController>.value(value: BasketController()),
      ],
      child: MaterialApp.router(
        title: 'Edtech',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerDelegate: router.delegate(),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}
