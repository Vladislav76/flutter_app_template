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
    SkinsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SkinsPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: '/skins', fullMatch: true),
        RouteConfig(SkinsRoute.name, path: '/skins')
      ];
}

/// generated route for
/// [SkinsPage]
class SkinsRoute extends PageRouteInfo<void> {
  const SkinsRoute() : super(SkinsRoute.name, path: '/skins');

  static const String name = 'SkinsRoute';
}
