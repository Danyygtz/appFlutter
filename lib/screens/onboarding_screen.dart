import 'package:lottie/lottie.dart';
import 'package:topicos/screens/card_language.dart';
import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final data = [
    CardLanguageData(
      title: "ASOCIACIÓN ESTUDIANTIL",
      subtitle: 
          "Asociaciones conformadas por las carreras del TECNM.",
      image: Image.asset("assets/logos/linceslogo.png"),
      backgroundColor: const Color(0xFF246D35),
      titleColor: const Color.fromARGB(255, 0, 0, 0),
      subtitleColor: Colors.red,
      background: LottieBuilder.asset("assets/inicio.json"),
      alignment: Alignment.topCenter,
    ),
    CardLanguageData(
      title: "AEISC",
      subtitle: "Asociación Estudiantil de Ingeniería en Sistemas Computacionales",
      image: Image.asset("assets/sistemas.png"),
      backgroundColor: const Color(0xFF027D9C),
      titleColor: Colors.white,
      subtitleColor: const Color(0xFF7F7F7F),
      background: LottieBuilder.asset("assets/fondoSistemas.json"),
      alignment: Alignment.topCenter,
    ),
    CardLanguageData(
      title: "AEIC",
      subtitle: "Asociación Estudiantil de Ingeniería Electrónica",
      image: Image.asset("assets/electronica.png"),
      backgroundColor: const Color(0xFFF8FAFC),
      titleColor: const Color(0xFF7F7F7F),
      subtitleColor: Colors.black,
      background: LottieBuilder.asset("assets/fondoElectronica.json"),
      alignment: Alignment.bottomCenter,
    ),
    CardLanguageData(
      title: "ASEIM",
      subtitle: "Estudiantil de Ingeniería Mecánica",
      image: Image.asset("assets/mecanica.png"),
      backgroundColor: const Color(0xFFFFFFFF),
      titleColor: Colors.black,
      subtitleColor: Colors.red,
      background: LottieBuilder.asset("assets/mecanica.json"),
      alignment: Alignment.topCenter,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: 4,
        itemBuilder: (int index) {
          return CardLanguage(data: data[index]);
        },
      ),
    );
  }
}