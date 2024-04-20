import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {

 final void Function() startQuiz ; 

  const StartScreen({super.key, required this.startQuiz});



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(224, 255, 188, 227),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learn Flutter the fun way !',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 255, 216, 241),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 216, 241),
              side: const BorderSide(
                color: Color.fromARGB(255, 255, 140, 188),
              ),
            ),
            icon: const Icon(
              Icons.arrow_right_outlined,
            ),
            label: const Text(
              'Start Quiz',
            ),
          ),
        ],
      ),
    );
  }
}
