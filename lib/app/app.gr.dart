// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../views/auth/auth_view.dart' as _i2;
import '../views/auth/login_view.dart' as _i4;
import '../views/auth/otp_view.dart' as _i6;
import '../views/auth/register_view.dart' as _i3;
import '../views/auth/reset_password_view.dart' as _i7;
import '../views/auth/unique_code_view.dart' as _i9;
import '../views/plan/choose_plan_view.dart' as _i5;
import '../views/plan/pick_favourite.dart' as _i8;
import '../views/splash/splash_view.dart' as _i1;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashViewRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashView(),
      );
    },
    AuthViewRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AuthView(),
      );
    },
    RegisterViewRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.RegisterView(),
      );
    },
    LoginViewRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.LoginView(),
      );
    },
    ChoosePlanViewRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ChoosePlanView(),
      );
    },
    OtpViewRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.OtpView(),
      );
    },
    ResetPasswordViewRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ResetPasswordView(),
      );
    },
    PickFavoritesViewRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.PickFavoritesView(),
      );
    },
    UniqueCodeViewRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.UniqueCodeView(),
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '',
          fullMatch: true,
        ),
        _i10.RouteConfig(
          SplashViewRoute.name,
          path: '',
        ),
        _i10.RouteConfig(
          AuthViewRoute.name,
          path: '/authView',
        ),
        _i10.RouteConfig(
          RegisterViewRoute.name,
          path: '/registerView',
        ),
        _i10.RouteConfig(
          LoginViewRoute.name,
          path: '/loginView',
        ),
        _i10.RouteConfig(
          ChoosePlanViewRoute.name,
          path: '/choosePlanView',
        ),
        _i10.RouteConfig(
          OtpViewRoute.name,
          path: '/otpView',
        ),
        _i10.RouteConfig(
          ResetPasswordViewRoute.name,
          path: '/resetPasswordView',
        ),
        _i10.RouteConfig(
          PickFavoritesViewRoute.name,
          path: '/pickFavoriteView',
        ),
        _i10.RouteConfig(
          UniqueCodeViewRoute.name,
          path: '/uniqueCodeView',
        ),
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashViewRoute extends _i10.PageRouteInfo<void> {
  const SplashViewRoute()
      : super(
          SplashViewRoute.name,
          path: '',
        );

  static const String name = 'SplashViewRoute';
}

/// generated route for
/// [_i2.AuthView]
class AuthViewRoute extends _i10.PageRouteInfo<void> {
  const AuthViewRoute()
      : super(
          AuthViewRoute.name,
          path: '/authView',
        );

  static const String name = 'AuthViewRoute';
}

/// generated route for
/// [_i3.RegisterView]
class RegisterViewRoute extends _i10.PageRouteInfo<void> {
  const RegisterViewRoute()
      : super(
          RegisterViewRoute.name,
          path: '/registerView',
        );

  static const String name = 'RegisterViewRoute';
}

/// generated route for
/// [_i4.LoginView]
class LoginViewRoute extends _i10.PageRouteInfo<void> {
  const LoginViewRoute()
      : super(
          LoginViewRoute.name,
          path: '/loginView',
        );

  static const String name = 'LoginViewRoute';
}

/// generated route for
/// [_i5.ChoosePlanView]
class ChoosePlanViewRoute extends _i10.PageRouteInfo<void> {
  const ChoosePlanViewRoute()
      : super(
          ChoosePlanViewRoute.name,
          path: '/choosePlanView',
        );

  static const String name = 'ChoosePlanViewRoute';
}

/// generated route for
/// [_i6.OtpView]
class OtpViewRoute extends _i10.PageRouteInfo<void> {
  const OtpViewRoute()
      : super(
          OtpViewRoute.name,
          path: '/otpView',
        );

  static const String name = 'OtpViewRoute';
}

/// generated route for
/// [_i7.ResetPasswordView]
class ResetPasswordViewRoute extends _i10.PageRouteInfo<void> {
  const ResetPasswordViewRoute()
      : super(
          ResetPasswordViewRoute.name,
          path: '/resetPasswordView',
        );

  static const String name = 'ResetPasswordViewRoute';
}

/// generated route for
/// [_i8.PickFavoritesView]
class PickFavoritesViewRoute extends _i10.PageRouteInfo<void> {
  const PickFavoritesViewRoute()
      : super(
          PickFavoritesViewRoute.name,
          path: '/pickFavoriteView',
        );

  static const String name = 'PickFavoritesViewRoute';
}

/// generated route for
/// [_i9.UniqueCodeView]
class UniqueCodeViewRoute extends _i10.PageRouteInfo<void> {
  const UniqueCodeViewRoute()
      : super(
          UniqueCodeViewRoute.name,
          path: '/uniqueCodeView',
        );

  static const String name = 'UniqueCodeViewRoute';
}
