import 'package:doctor/core/routing/app_routes.dart';
import 'package:go_router/go_router.dart';

class RouterGeneration {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onboardingScreen,
    routes: [
      // GoRoute(
      //   path: AppRoutes.onboardingScreen,
      //   name: AppRoutes.onboardingScreen,
      //   builder: (context, state) => const SplashScreen(),
      // ),
    ],
  );
}
