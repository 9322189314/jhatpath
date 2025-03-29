import 'package:flutter/material.dart';
import 'package:zhatpath/view/login/welcome_view.dart';

class StartupView extends StatefulWidget {
  const StartupView({super.key});

  @override
  State<StartupView> createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
  @override
  void initState() {
    super.initState();
    goWelcomePage();
  }

  void goWelcomePage() async {
    await Future.delayed(const Duration(seconds: 1)); // Adjust delay for splash effect
    welcomePage();
  }

  void welcomePage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const WelcomeView()));
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Background Image covering full screen
          Positioned.fill(
            child: Image.asset(
              "assets/img/splash_bg.png",
              fit: BoxFit.cover,
            ),
          ),

          // Centered Logo
          Center(
            child: Image.asset(
              "assets/img/app_logo.png", // Replace with your logo path
              width: media.width * 0.5,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
