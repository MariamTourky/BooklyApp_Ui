import 'package:bookly_mvvm/constants.dart';
import 'package:bookly_mvvm/core/utils/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'features/splash/Presentation/Views/SplashView.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(
          scaffoldBackgroundColor: kprimaryColor),

    );
  }
}


