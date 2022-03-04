// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i8;

import '../../features/auth/presentation/ui/auth_page.dart' as _i2;
import '../../features/home/presentation/ui/home_page.dart' as _i3;
import '../../features/news_sections/presentation/ui/news_sections_page.dart'
    as _i5;
import '../../features/profile/editing/presentation/ui/profile_editing_page.dart'
    as _i7;
import '../../features/profile/info/presentation/ui/profile_info_page.dart'
    as _i6;
import '../../features/splash/presentation/ui/splash_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    AuthRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.AuthPage());
    },
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    NewsSectionsRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    NewsSectionsRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.NewsSectionsPage());
    },
    ProfileInfoRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ProfileInfoPage());
    },
    ProfileEditingRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ProfileEditingPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashRoute.name, path: '/'),
        _i4.RouteConfig(AuthRoute.name, path: '/auth'),
        _i4.RouteConfig(HomeRoute.name, path: '/', children: [
          _i4.RouteConfig(NewsSectionsRouter.name,
              path: 'news_sections',
              parent: HomeRoute.name,
              children: [
                _i4.RouteConfig(NewsSectionsRoute.name,
                    path: '', parent: NewsSectionsRouter.name),
                _i4.RouteConfig('*#redirect',
                    path: '*',
                    parent: NewsSectionsRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i4.RouteConfig(ProfileRouter.name,
              path: 'profile',
              parent: HomeRoute.name,
              children: [
                _i4.RouteConfig(ProfileInfoRoute.name,
                    path: '', parent: ProfileRouter.name),
                _i4.RouteConfig(ProfileEditingRoute.name,
                    path: 'edit', parent: ProfileRouter.name),
                _i4.RouteConfig('*#redirect',
                    path: '*',
                    parent: ProfileRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.AuthPage]
class AuthRoute extends _i4.PageRouteInfo<void> {
  const AuthRoute() : super(AuthRoute.name, path: '/auth');

  static const String name = 'AuthRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class NewsSectionsRouter extends _i4.PageRouteInfo<void> {
  const NewsSectionsRouter({List<_i4.PageRouteInfo>? children})
      : super(NewsSectionsRouter.name,
            path: 'news_sections', initialChildren: children);

  static const String name = 'NewsSectionsRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class ProfileRouter extends _i4.PageRouteInfo<void> {
  const ProfileRouter({List<_i4.PageRouteInfo>? children})
      : super(ProfileRouter.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i5.NewsSectionsPage]
class NewsSectionsRoute extends _i4.PageRouteInfo<void> {
  const NewsSectionsRoute() : super(NewsSectionsRoute.name, path: '');

  static const String name = 'NewsSectionsRoute';
}

/// generated route for
/// [_i6.ProfileInfoPage]
class ProfileInfoRoute extends _i4.PageRouteInfo<void> {
  const ProfileInfoRoute() : super(ProfileInfoRoute.name, path: '');

  static const String name = 'ProfileInfoRoute';
}

/// generated route for
/// [_i7.ProfileEditingPage]
class ProfileEditingRoute extends _i4.PageRouteInfo<void> {
  const ProfileEditingRoute() : super(ProfileEditingRoute.name, path: 'edit');

  static const String name = 'ProfileEditingRoute';
}
