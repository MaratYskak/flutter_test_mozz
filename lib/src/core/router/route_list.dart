part of 'router_provider.dart';

const _fadeTransitionBegin = 0.0;
const _fadeTransitionEnd = 1.0;

List<GoRoute> _routes = [
  GoRoute(
    name: AppRoutes.main.name,
    path: AppRoutes.main.path,
    builder: (context, state) => const HomePage(),
    routes: [
      GoRoute(
        name: AppRoutes.settings.name,
        path: AppRoutes.settings.path,
        pageBuilder: (context, state) => PageTransition.fade(
          context: context,
          state: state,
          begin: _fadeTransitionBegin,
          end: _fadeTransitionEnd,
          child: const SettingsPage(),
        ),
      ),
    ],
  ),
];
