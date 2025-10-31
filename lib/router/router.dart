import 'package:auto_route/auto_route.dart';
import 'package:furniture_shopping_app/features/home/view/home_screen.dart';
import 'package:furniture_shopping_app/features/homeTab/view/home_tab_screen.dart';
import 'package:furniture_shopping_app/features/onboarding/view/onboarding_screen.dart';
import 'package:furniture_shopping_app/features/signin/view/signin_screen.dart';
import 'package:furniture_shopping_app/features/signup/view/signup_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnboardingRoute.page, path: '/onboarding'),
    AutoRoute(page: SigninRoute.page, path: '/signin'),
    AutoRoute(page: SignupRoute.page, path: '/signup'),
    AutoRoute(
      page: HomeRoute.page,
      path: '/',
      // guards: [],
      children: [AutoRoute(page: HomeTabRoute.page, path: 'home')],
    ),
  ];
}
