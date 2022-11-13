import 'package:auto_route/annotations.dart';
import 'package:produtech/views/auth/auth_view.dart';
import 'package:produtech/views/auth/login_view.dart';
import 'package:produtech/views/auth/otp_view.dart';
import 'package:produtech/views/auth/register_view.dart';
import 'package:produtech/views/auth/reset_password_view.dart';
import 'package:produtech/views/auth/unique_code_view.dart';
import 'package:produtech/views/plan/choose_plan_view.dart';
import 'package:produtech/views/plan/pick_favourite.dart';
import 'package:produtech/views/splash/splash_view.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(path: '', page: SplashView, initial: true),
    AutoRoute(path: '/authView', page: AuthView),
    AutoRoute(path: '/registerView', page: RegisterView),
    AutoRoute(path: '/loginView', page: LoginView),
    AutoRoute(path: '/choosePlanView', page: ChoosePlanView),
    AutoRoute(path: '/otpView', page: OtpView),
    AutoRoute(path: '/resetPasswordView', page: ResetPasswordView),
    AutoRoute(path: '/pickFavoriteView', page: PickFavoritesView),
    AutoRoute(path: '/uniqueCodeView', page: UniqueCodeView),
  ],
)
class $AppRouter {}
