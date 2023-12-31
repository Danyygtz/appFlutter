import 'package:flutter/material.dart';
import 'package:topicos/screens/conversor_screen.dart';
import 'package:topicos/screens/dashboard_screen.dart';
import 'package:topicos/screens/fruit_screen.dart';
import 'package:topicos/screens/intenciones_screen.dart';
import 'package:topicos/screens/login_screen_practica.dart';
import 'package:topicos/screens/onboarding_screen.dart';
import 'package:topicos/screens/popular_screen.dart';
import 'package:topicos/screens/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/temp" : (context) => const ConversorScreen(),
        "/dash" :(context) => const DashboardScreen(),
        "/int" :(context) => const IntencionesScreen(),
        "/movie" :(context) => const PopularScreen(),
        "/onboard" : (context) => OnboardingScreen(),
        "/login" : (context) => LoginScreen(),
        "/fruity" : (context) => FirstScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      // home: ,
    );
  }
}