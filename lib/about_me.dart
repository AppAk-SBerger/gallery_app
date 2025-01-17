import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:gallery_app/astro_colors.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AstroColors.astroBlue3,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AstroColors.astroBlue2,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AstroColors.astroBlue3,
          statusBarIconBrightness: Brightness.light,
        ),
        title: Text(
            style: TextStyle(color: AstroColors.astroOrange1, fontWeight: FontWeight.bold),
            'About Me'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AstroColors.astroOrange1,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Image(
                    image: AssetImage('assets/images/family.jpg'),
                  ),
                ),
              ),
            ),
            Text(
                style: TextStyle(
                  color: AstroColors.astroOrange1,
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                ),
                '\nKonrad Peter Dreymark'),
            Text(
                style: TextStyle(
                  color: AstroColors.astroOrange1,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                '\nJournalist\n'),
            // Text(''),
            Text(
                style: TextStyle(
                  color: AstroColors.astroWhite1,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                "Hi, I'm Konrad Peter, 27 years old, a freelance journalist specializing in science and space exploration. I live in Kiel with my fiancée and our three cats. From an early age, I've been fascinated by astronomy and gazing at the stars. At the age of four, I was thrilled to receive my first telescope as a gift, and with it, I embarked on my first experiments in astrophotography.\n\nIn this gallery, I'd like to share my favorite photos with you. I hope you not only enjoy them but also feel inspired to try capturing the wonders of the cosmos yourself! :)\n\nBest regards,\nK.P. Dreymark"),
          ],
        ),
      ),
    );
  }
}
