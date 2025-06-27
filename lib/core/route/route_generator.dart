import 'package:flutter/material.dart';
import 'package:flutter_study_api_dio/core/route/route_string.dart';
import 'package:flutter_study_api_dio/core/screens/screen_first/home_page.dart';
import 'package:flutter_study_api_dio/core/screens/mothed_api/about_screen.dart';

class RouteGenerator {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (_) => const MyHomePage(title: 'hello'),
        );
      case feedRoute:
        return MaterialPageRoute(builder: (_) => const AboutScreen());
      default:
        return _errorPage();
    }
  }

  static Route _errorPage() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text('Pages Are loading')),
          body: const Center(child: Text('Sorry rout are not founding!')),
        );
      },
    );
  }
}
