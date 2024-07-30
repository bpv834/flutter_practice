import 'package:bhgh/presentation/home_page/home_screen.dart';
import 'package:bhgh/presentation/login_page/login_screen.dart';
import 'package:bhgh/presentation/login_page/login_view_model.dart';
import 'package:bhgh/presentation/sign_up_page/sign_up_screen.dart';
import 'package:bhgh/presentation/sign_up_page/sign_up_view_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../di/di_setup.dart';



final GoRouter router = GoRouter(
  initialLocation: '/loginPage',
  routes: <RouteBase>[
    GoRoute(
      path: '/loginPage',
      builder: (BuildContext context, GoRouterState state) {
        return ChangeNotifierProvider(
          create: (_) => getIt.get<LoginViewModel>(),
          child: LoginScreen(),
        );
      },
    ),
    GoRoute(
      path: '/signUpPage',
      builder: (BuildContext context, GoRouterState state) {
        return ChangeNotifierProvider(
          create: (_) => getIt.get<SignUpViewModel>(),
          child: const SignUpScreen(),
        );
      },
    ),
    GoRoute(
      path: '/homePage',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
  ],
);
