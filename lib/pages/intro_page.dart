import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //logo
        Padding(
          padding:
              const EdgeInsets.only(left: 80, right: 80, bottom: 40, top: 120),
          child: Image.asset('lib/images/avocado.png'),
        ),

        //we deliver groceries at your doorstep
        Text(
          "We deliver groceries at your doorstep",
          textAlign: TextAlign.center,
          style: GoogleFonts.notoSerif(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(
          height: 24,
        ),

        //fresh items everyday
        Text("Fresh items everyday", style: TextStyle(color: Colors.grey[600])),

        const Spacer(),

        //get started button
        GestureDetector(
          onTap: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const HomePage();
              },
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.all(24),
          child: const Text(
            "Get Started",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Spacer(),
      ],
    ));
  }
}
