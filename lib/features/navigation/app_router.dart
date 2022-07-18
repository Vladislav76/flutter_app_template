import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_template/features/skins/presentation/ui/page/skins_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      path: '/skins',
      page: SkinsPage,
    ),
    // Initial splash page
    // AutoRoute(
    //   path: '/',
    //   page: SplashPage,
    // ),
    // // Authorization page
    // AutoRoute(
    //   path: '/auth',
    //   page: AuthPage,
    // ),
    // Home page
    // AutoRoute(
    //   path: '/',
    //   page: HomePage,
    //   children: [
    // News sections tab
    //       AutoRoute(
    //         path: 'news_sections',
    //         name: 'NewsSectionsRouter',
    //         page: EmptyRouterPage,
    //         children: [
    //           AutoRoute(path: '', page: NewsSectionsPage),
    //           RedirectRoute(path: '*', redirectTo: ''),
    //         ],
    //       ),
    //       // Profile tab
    //       AutoRoute(
    //         path: 'profile',
    //         name: 'ProfileRouter',
    //         page: EmptyRouterPage,
    //         children: [
    //           AutoRoute(path: '', page: ProfileInfoPage),
    //           AutoRoute(path: 'edit', page: ProfileEditingPage),
    //           RedirectRoute(path: '*', redirectTo: ''),
    //         ],
    //       ),
    //     ],
    //   ),
  ],
)
class AppRouter extends _$AppRouter {}
