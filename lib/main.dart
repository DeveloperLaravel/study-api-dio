import 'package:flutter/material.dart';
import 'package:flutter_study_api_dio/core/route/route_generator.dart';
import 'package:flutter_study_api_dio/core/route/route_string.dart';
import 'package:flutter_study_api_dio/core/screens/screen_first/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: homeRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
