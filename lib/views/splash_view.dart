import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreenAnimated extends StatelessWidget {
  const SplashScreenAnimated({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Expanded(
            child: Lottie.asset(
              'lib/assets/animations/logo.json',
              fit: BoxFit.fitWidth,
            ),
          ),
          const Text(
            'Notes App',
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 80,
          )
        ],
      ),
      splashIconSize: double.infinity,
      backgroundColor: Colors.grey.shade900,
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      nextScreen: const NotesView(),
      centered: true,
    );
  }
}
