import 'package:go_router/go_router.dart';
import 'package:trikster/src/pages/dashboard_page.dart';
import 'package:trikster/src/pages/profile_page.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: 'dashboard',
    builder: ((context, state) => const DashboardPage()),
  ),
  GoRoute(
    path: '/profile',
    name: 'profile',
    builder: ((context, state) => const ProfilePage()),
  ),
]);
