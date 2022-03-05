import 'package:auto_route/auto_route.dart';
import 'package:template_app/src/features/auth/presentation/ui/auth_page.dart';
import 'package:template_app/src/features/home/presentation/ui/home_page.dart';
import 'package:template_app/src/features/news_sections/presentation/ui/news_sections_page.dart';
import 'package:template_app/src/features/profile/editing/presentation/ui/profile_editing_page.dart';
import 'package:template_app/src/features/profile/info/presentation/ui/profile_info_page.dart';
import 'package:template_app/src/features/splash/presentation/ui/splash_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // Initial splash page
    AutoRoute(
      path: '/',
      page: SplashPage,
    ),
    // Authorization page
    AutoRoute(
      path: '/auth',
      page: AuthPage,
    ),
    // Home page
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        // News sections tab
        AutoRoute(
          path: 'news_sections',
          name: 'NewsSectionsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: NewsSectionsPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        // Profile tab
        AutoRoute(
          path: 'profile',
          name: 'ProfileRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: ProfileInfoPage),
            AutoRoute(path: 'edit', page: ProfileEditingPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
