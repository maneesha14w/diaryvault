import 'package:dairy_app/core/logger/logger.dart';
import 'package:dairy_app/features/auth/presentation/pages/auth_page.dart';
import 'package:dairy_app/core/pages/home_page.dart';
import 'package:dairy_app/features/notes/presentation/pages/note_create_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    final log = printer("Router");

    log.i("routing to ${settings.name} with args $args");

    if (settings.name == HomePage.route) {
      return MaterialPageRoute(builder: (_) => HomePage());
    } else if (settings.name == AuthPage.route) {
      return MaterialPageRoute(builder: (_) => AuthPage());
    } else if (settings.name == NoteCreatePage.route) {
      return MaterialPageRoute(builder: (_) => NoteCreatePage());
    }
    return MaterialPageRoute(
      builder: (_) => Container(
        child: Center(
          child: Text("page not found"),
        ),
      ),
    );
  }
}
