import 'package:efishery/screens/landing_screen.dart';
import 'package:efishery/screens/register_screen.dart';
import 'package:flutter/material.dart';
import '../routes/app_routes.dart';
import '../screens/login_screen.dart';
import '../screens/home_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppRoutes.register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case AppRoutes.landing:
        return MaterialPageRoute(builder: (_) => const LandingScreen());
      // Tambahkan route lainnya di sini
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('Route tidak ditemukan: ${settings.name}'),
                ),
              ),
        );
    }
  }
}
