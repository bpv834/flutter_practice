import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../di/di_setup.dart';
import '../../presentation/main_screen.dart';
import '../../presentation/main_view_model.dart';


final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return ChangeNotifierProvider(
          create: (_) => getIt.get<MainViewModel>(),
          child: const MainScreen(),
        );
      },
    ),
  ],
);
