import 'package:flutter/material.dart';
import 'colors.dart';

class PrimaryButtonLogin extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const PrimaryButtonLogin({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 320.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1024),
        gradient: LinearGradient(
          colors: [
            colors['primary']!,
            const Color.fromARGB(0, 255, 255, 255),
            const Color.fromARGB(207, 255, 126, 188),
            const Color.fromARGB(207, 251, 4, 123),
            const Color.fromARGB(255, 255, 44, 247),
          ], // Adjust colors as needed
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        border: Border.all(width: 1, color: Colors.transparent),
      ),
      child: ElevatedButton(
        onPressed: () {
          // Your button's action
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(colors['darker']),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(1024)),
          )
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          margin: const EdgeInsets.all(0.0),
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 24  
            ),
          ),
        ),
      ),
    );
  }
}