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
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:flutter/material.dart' as _i21;

import '../views/auth/auth_view.dart' as _i2;
import '../views/auth/login_view.dart' as _i4;
import '../views/auth/otp_view.dart' as _i6;
import '../views/auth/register_view.dart' as _i3;
import '../views/auth/reset_password_view.dart' as _i7;
import '../views/auth/unique_code_view.dart' as _i9;
import '../views/dashboard/basket/basket_view.dart' as _i14;
import '../views/dashboard/course/course_preview_view.dart' as _i13;
import '../views/dashboard/course/course_view.dart' as _i12;
import '../views/dashboard/dashboard_view.dart' as _i10;
import '../views/dashboard/explore/explore_view.dart' as _i16;
import '../views/dashboard/learning/learning_view.dart' as _i17;
import '../views/dashboard/notification/notification_view.dart' as _i15;
import '../views/dashboard/profile/profile_view.dart' as _i19;
import '../views/dashboard/saved/saved_view.dart' as _i18;
import '../views/dashboard/settings/settings_view.dart' as _i11;
import '../views/plan/choose_plan_view.dart' as _i5;
import '../views/plan/pick_favourite.dart' as _i8;
import '../views/splash/splash_view.dart' as _i1;

class AppRouter extends _i20.RootStackRouter {
  AppRouter([_i21.GlobalKey<_i21.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    SplashViewRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashView(),
      );
    },
    AuthViewRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.AuthView(),
      );
    },
    RegisterViewRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.RegisterView(),
      );
    },
    LoginViewRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.LoginView(),
      );
    },
    ChoosePlanViewRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ChoosePlanView(),
      );
    },
    OtpViewRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.OtpView(),
      );
    },
    ResetPasswordViewRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ResetPasswordView(),
      );
    },
    PickFavoritesViewRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.PickFavoritesView(),
      );
    },
    UniqueCodeViewRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.UniqueCodeView(),
      );
    },
    DashboardViewRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.DashboardView(),
      );
    },
    SettingViewsRoute.name: (routeData) {
      final args = routeData.argsAs<SettingViewsRouteArgs>();
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.SettingViews(
          key: args.key,
          pageType: args.pageType,
        ),
      );
    },
    CourseViewRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.CourseView(),
      );
    },
    CoursePreviewViewRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.CoursePreviewView(),
      );
    },
    BasketViewRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.BasketView(),
      );
    },
    NotificationViewRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.NotificationView(),
      );
    },
    ExploreViewRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.ExploreView(),
      );
    },
    LearningViewRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.LearningView(),
      );
    },
    SavedViewRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.SavedView(),
      );
    },
    ProfileViewRoute.name: (routeData) {
      return _i20.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i19.ProfileView(),
      );
    },
  };

  @override
  List<_i20.RouteConfig> get routes => [
        _i20.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '',
          fullMatch: true,
        ),
        _i20.RouteConfig(
          SplashViewRoute.name,
          path: '',
        ),
        _i20.RouteConfig(
          AuthViewRoute.name,
          path: '/authView',
        ),
        _i20.RouteConfig(
          RegisterViewRoute.name,
          path: '/registerView',
        ),
        _i20.RouteConfig(
          LoginViewRoute.name,
          path: '/loginView',
        ),
        _i20.RouteConfig(
          ChoosePlanViewRoute.name,
          path: '/choosePlanView',
        ),
        _i20.RouteConfig(
          OtpViewRoute.name,
          path: '/otpView',
        ),
        _i20.RouteConfig(
          ResetPasswordViewRoute.name,
          path: '/resetPasswordView',
        ),
        _i20.RouteConfig(
          PickFavoritesViewRoute.name,
          path: '/pickFavoriteView',
        ),
        _i20.RouteConfig(
          UniqueCodeViewRoute.name,
          path: '/uniqueCodeView',
        ),
        _i20.RouteConfig(
          DashboardViewRoute.name,
          path: '/dashboard-view',
          children: [
            _i20.RouteConfig(
              ExploreViewRoute.name,
              path: '',
              parent: DashboardViewRoute.name,
            ),
            _i20.RouteConfig(
              LearningViewRoute.name,
              path: 'learning-view',
              parent: DashboardViewRoute.name,
            ),
            _i20.RouteConfig(
              SavedViewRoute.name,
              path: 'saved-view',
              parent: DashboardViewRoute.name,
            ),
            _i20.RouteConfig(
              ProfileViewRoute.name,
              path: 'profile-view',
              parent: DashboardViewRoute.name,
            ),
          ],
        ),
        _i20.RouteConfig(
          SettingViewsRoute.name,
          path: '/settingView',
        ),
        _i20.RouteConfig(
          CourseViewRoute.name,
          path: '/coursesView',
        ),
        _i20.RouteConfig(
          CoursePreviewViewRoute.name,
          path: '/coursePreviewView',
        ),
        _i20.RouteConfig(
          BasketViewRoute.name,
          path: '/basketView',
        ),
        _i20.RouteConfig(
          NotificationViewRoute.name,
          path: '/notificationView',
        ),
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashViewRoute extends _i20.PageRouteInfo<void> {
  const SplashViewRoute()
      : super(
          SplashViewRoute.name,
          path: '',
        );

  static const String name = 'SplashViewRoute';
}

/// generated route for
/// [_i2.AuthView]
class AuthViewRoute extends _i20.PageRouteInfo<void> {
  const AuthViewRoute()
      : super(
          AuthViewRoute.name,
          path: '/authView',
        );

  static const String name = 'AuthViewRoute';
}

/// generated route for
/// [_i3.RegisterView]
class RegisterViewRoute extends _i20.PageRouteInfo<void> {
  const RegisterViewRoute()
      : super(
          RegisterViewRoute.name,
          path: '/registerView',
        );

  static const String name = 'RegisterViewRoute';
}

/// generated route for
/// [_i4.LoginView]
class LoginViewRoute extends _i20.PageRouteInfo<void> {
  const LoginViewRoute()
      : super(
          LoginViewRoute.name,
          path: '/loginView',
        );

  static const String name = 'LoginViewRoute';
}

/// generated route for
/// [_i5.ChoosePlanView]
class ChoosePlanViewRoute extends _i20.PageRouteInfo<void> {
  const ChoosePlanViewRoute()
      : super(
          ChoosePlanViewRoute.name,
          path: '/choosePlanView',
        );

  static const String name = 'ChoosePlanViewRoute';
}

/// generated route for
/// [_i6.OtpView]
class OtpViewRoute extends _i20.PageRouteInfo<void> {
  const OtpViewRoute()
      : super(
          OtpViewRoute.name,
          path: '/otpView',
        );

  static const String name = 'OtpViewRoute';
}

/// generated route for
/// [_i7.ResetPasswordView]
class ResetPasswordViewRoute extends _i20.PageRouteInfo<void> {
  const ResetPasswordViewRoute()
      : super(
          ResetPasswordViewRoute.name,
          path: '/resetPasswordView',
        );

  static const String name = 'ResetPasswordViewRoute';
}

/// generated route for
/// [_i8.PickFavoritesView]
class PickFavoritesViewRoute extends _i20.PageRouteInfo<void> {
  const PickFavoritesViewRoute()
      : super(
          PickFavoritesViewRoute.name,
          path: '/pickFavoriteView',
        );

  static const String name = 'PickFavoritesViewRoute';
}

/// generated route for
/// [_i9.UniqueCodeView]
class UniqueCodeViewRoute extends _i20.PageRouteInfo<void> {
  const UniqueCodeViewRoute()
      : super(
          UniqueCodeViewRoute.name,
          path: '/uniqueCodeView',
        );

  static const String name = 'UniqueCodeViewRoute';
}

/// generated route for
/// [_i10.DashboardView]
class DashboardViewRoute extends _i20.PageRouteInfo<void> {
  const DashboardViewRoute({List<_i20.PageRouteInfo>? children})
      : super(
          DashboardViewRoute.name,
          path: '/dashboard-view',
          initialChildren: children,
        );

  static const String name = 'DashboardViewRoute';
}

/// generated route for
/// [_i11.SettingViews]
class SettingViewsRoute extends _i20.PageRouteInfo<SettingViewsRouteArgs> {
  SettingViewsRoute({
    _i21.Key? key,
    required _i19.PageWidgetType pageType,
  }) : super(
          SettingViewsRoute.name,
          path: '/settingView',
          args: SettingViewsRouteArgs(
            key: key,
            pageType: pageType,
          ),
        );

  static const String name = 'SettingViewsRoute';
}

class SettingViewsRouteArgs {
  const SettingViewsRouteArgs({
    this.key,
    required this.pageType,
  });

  final _i21.Key? key;

  final _i19.PageWidgetType pageType;

  @override
  String toString() {
    return 'SettingViewsRouteArgs{key: $key, pageType: $pageType}';
  }
}

/// generated route for
/// [_i12.CourseView]
class CourseViewRoute extends _i20.PageRouteInfo<void> {
  const CourseViewRoute()
      : super(
          CourseViewRoute.name,
          path: '/coursesView',
        );

  static const String name = 'CourseViewRoute';
}

/// generated route for
/// [_i13.CoursePreviewView]
class CoursePreviewViewRoute extends _i20.PageRouteInfo<void> {
  const CoursePreviewViewRoute()
      : super(
          CoursePreviewViewRoute.name,
          path: '/coursePreviewView',
        );

  static const String name = 'CoursePreviewViewRoute';
}

/// generated route for
/// [_i14.BasketView]
class BasketViewRoute extends _i20.PageRouteInfo<void> {
  const BasketViewRoute()
      : super(
          BasketViewRoute.name,
          path: '/basketView',
        );

  static const String name = 'BasketViewRoute';
}

/// generated route for
/// [_i15.NotificationView]
class NotificationViewRoute extends _i20.PageRouteInfo<void> {
  const NotificationViewRoute()
      : super(
          NotificationViewRoute.name,
          path: '/notificationView',
        );

  static const String name = 'NotificationViewRoute';
}

/// generated route for
/// [_i16.ExploreView]
class ExploreViewRoute extends _i20.PageRouteInfo<void> {
  const ExploreViewRoute()
      : super(
          ExploreViewRoute.name,
          path: '',
        );

  static const String name = 'ExploreViewRoute';
}

/// generated route for
/// [_i17.LearningView]
class LearningViewRoute extends _i20.PageRouteInfo<void> {
  const LearningViewRoute()
      : super(
          LearningViewRoute.name,
          path: 'learning-view',
        );

  static const String name = 'LearningViewRoute';
}

/// generated route for
/// [_i18.SavedView]
class SavedViewRoute extends _i20.PageRouteInfo<void> {
  const SavedViewRoute()
      : super(
          SavedViewRoute.name,
          path: 'saved-view',
        );

  static const String name = 'SavedViewRoute';
}

/// generated route for
/// [_i19.ProfileView]
class ProfileViewRoute extends _i20.PageRouteInfo<void> {
  const ProfileViewRoute()
      : super(
          ProfileViewRoute.name,
          path: 'profile-view',
        );

  static const String name = 'ProfileViewRoute';
}
