import 'package:flutter/material.dart';
import 'package:go_route/pages/about.dart';
import 'package:go_route/pages/contact_us.dart';
import 'package:go_route/pages/home.dart';
import 'package:go_route/pages/profile.dart';
import 'package:go_router/go_router.dart';

class MyAppRouter {
  final GoRouter myRouter = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'aboutPage/:id',
            name: 'aboutPage',
            builder: (BuildContext context, GoRouterState state) =>
                AboutPage(id: state.pathParameters['id']),
          ),
          GoRoute(
            path: 'profile',
            builder: (BuildContext context, GoRouterState state) {
              return const ProfilePage();
            },
          ),
          GoRoute(
            path: 'contact_us',
            builder: (BuildContext context, GoRouterState state) =>
             const ContactUsPage()
            ,
          ),
        ],
      ),
    ],
  );
}
