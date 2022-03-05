// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashPage());
    },
    AuthRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AuthPage());
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    NewsSectionsRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    NewsSectionsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const NewsSectionsPage());
    },
    ProfileInfoRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ProfileInfoPage());
    },
    ProfileEditingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ProfileEditingPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(AuthRoute.name, path: '/auth'),
        RouteConfig(HomeRoute.name, path: '/', children: [
          RouteConfig(NewsSectionsRouter.name,
              path: 'news_sections',
              parent: HomeRoute.name,
              children: [
                RouteConfig(NewsSectionsRoute.name,
                    path: '', parent: NewsSectionsRouter.name),
                RouteConfig('*#redirect',
                    path: '*',
                    parent: NewsSectionsRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          RouteConfig(ProfileRouter.name,
              path: 'profile',
              parent: HomeRoute.name,
              children: [
                RouteConfig(ProfileInfoRoute.name,
                    path: '', parent: ProfileRouter.name),
                RouteConfig(ProfileEditingRoute.name,
                    path: 'edit', parent: ProfileRouter.name),
                RouteConfig('*#redirect',
                    path: '*',
                    parent: ProfileRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ])
        ])
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute() : super(AuthRoute.name, path: '/auth');

  static const String name = 'AuthRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [EmptyRouterPage]
class NewsSectionsRouter extends PageRouteInfo<void> {
  const NewsSectionsRouter({List<PageRouteInfo>? children})
      : super(NewsSectionsRouter.name,
            path: 'news_sections', initialChildren: children);

  static const String name = 'NewsSectionsRouter';
}

/// generated route for
/// [EmptyRouterPage]
class ProfileRouter extends PageRouteInfo<void> {
  const ProfileRouter({List<PageRouteInfo>? children})
      : super(ProfileRouter.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [NewsSectionsPage]
class NewsSectionsRoute extends PageRouteInfo<void> {
  const NewsSectionsRoute() : super(NewsSectionsRoute.name, path: '');

  static const String name = 'NewsSectionsRoute';
}

/// generated route for
/// [ProfileInfoPage]
class ProfileInfoRoute extends PageRouteInfo<void> {
  const ProfileInfoRoute() : super(ProfileInfoRoute.name, path: '');

  static const String name = 'ProfileInfoRoute';
}

/// generated route for
/// [ProfileEditingPage]
class ProfileEditingRoute extends PageRouteInfo<void> {
  const ProfileEditingRoute() : super(ProfileEditingRoute.name, path: 'edit');

  static const String name = 'ProfileEditingRoute';
}
