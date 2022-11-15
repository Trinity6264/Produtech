import 'package:auto_route/annotations.dart';
import 'package:produtech/views/auth/auth_view.dart';
import 'package:produtech/views/auth/login_view.dart';
import 'package:produtech/views/auth/otp_view.dart';
import 'package:produtech/views/auth/register_view.dart';
import 'package:produtech/views/auth/reset_password_view.dart';
import 'package:produtech/views/auth/unique_code_view.dart';
import 'package:produtech/views/dashboard/course/course_preview_view.dart';
import 'package:produtech/views/dashboard/course/course_view.dart';
import 'package:produtech/views/dashboard/dashboard_view.dart';
import 'package:produtech/views/dashboard/explore/explore_view.dart';
import 'package:produtech/views/dashboard/learning/learning_view.dart';
import 'package:produtech/views/dashboard/profile/profile_view.dart';
import 'package:produtech/views/dashboard/saved/saved_view.dart';
import 'package:produtech/views/dashboard/settings/settings_view.dart';
import 'package:produtech/views/plan/choose_plan_view.dart';
import 'package:produtech/views/plan/pick_favourite.dart';
import 'package:produtech/views/splash/splash_view.dart';

@MaterialAutoRouter(
  routes: [
    // Splash and Auth views
    AutoRoute(path: '', page: SplashView, initial: true),
    AutoRoute(path: '/authView', page: AuthView),
    AutoRoute(path: '/registerView', page: RegisterView),
    AutoRoute(path: '/loginView', page: LoginView),
    AutoRoute(path: '/choosePlanView', page: ChoosePlanView),
    AutoRoute(path: '/otpView', page: OtpView),
    AutoRoute(path: '/resetPasswordView', page: ResetPasswordView),
    AutoRoute(path: '/pickFavoriteView', page: PickFavoritesView),
    AutoRoute(path: '/uniqueCodeView', page: UniqueCodeView),
    // Dashboard View
    AutoRoute(
      path: '/dashboard-view',
      initial: true,
      page: DashboardView,
      children: [
        AutoRoute(path: '', page: ExploreView, initial: true),
        AutoRoute(path: 'learning-view', page: LearningView),
        AutoRoute(path: 'saved-view', page: SavedView),
        AutoRoute(path: 'profile-view', page: ProfileView),
      ],
    ),
    //other sub routes
        AutoRoute(path: '/settingView', page: SettingViews),
        AutoRoute(path: '/coursesView', page: CourseView),
        AutoRoute(path: '/coursePreviewView', page: CoursePreviewView),
  ],
)
class $AppRouter {}
