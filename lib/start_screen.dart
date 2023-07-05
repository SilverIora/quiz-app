import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.start, {super.key});

  final void Function() start;

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 255, 30),
            Color.fromARGB(255, 208, 0, 255)
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(155, 250, 250, 250),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Learn Flutter The Fun Way',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
          OutlinedButton.icon(
            onPressed: start,
            icon: const Icon(Icons.arrow_right_alt_rounded),
            label: const Text('Start Quiz'),
          )
        ],
      )),
    );
  }
}
