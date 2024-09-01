import 'package:bookly_mvvm/features/home/Presentation/Views/BookDetailsView.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/Presentation/Views/HomeView.dart';
import '../../features/search/Presentation/Views/SearchView.dart';
import '../../features/splash/Presentation/Views/SplashView.dart';

abstract class AppRouter {
  static final String homeViewRouter='/homeView';
  static final String bookDetailsViewRouter='/bookDetailsView';
  static const searchView = '/searchView';

  static final GoRouter router = GoRouter(
    initialLocation: '/',  // Ensures app starts at splash screen
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const SplashView(),
      ),
      GoRoute(
        path: homeViewRouter,
        builder: (BuildContext context, GoRouterState state) => const HomeView(),
      ),
      GoRoute(
        path:bookDetailsViewRouter,
        builder: (BuildContext context, GoRouterState state) => const BookDetailsView(),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
