import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_5/Utilities/colors.dart';
import 'package:flutter_application_5/screens/loginpage.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size; // Using MediaQuery directly
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        // Centering the Column
        child: Column(
          mainAxisSize: MainAxisSize.min, // Adjust as needed
          children: [
            Text(
              "PiTCHER",
              style: GoogleFonts.diplomataSc(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "SMASH your ENEMY",
              style: GoogleFonts.diplomataSc(
                color: whiteclr,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 70),
            Image.asset(
              "assets/baseball-bat.png",
              height: 200,
              width: 300,
            ),
            const SizedBox(height: 100),
            InkWell(
              onTap: () {
                print("Container tapped");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 100,
                width: screenSize.width * 0.8, // Responsive width
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 158, 207, 248),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    "Let's pitch now",
                    style: GoogleFonts.diplomata(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
