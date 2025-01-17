import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gallery_app/about_me.dart';

import 'package:gallery_app/astro_colors.dart';
import 'package:gallery_app/celestial.dart';
import 'package:gallery_app/gallery_cards.dart';
import 'package:gallery_app/gallery_screen.dart';
import 'list_of_celestials.dart';

void main() {
  runApp(const MainApp());

  // celestials[0].nameofCelestial
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MaterialScrollBehavior().copyWith(overscroll: false),
      home: Scaffold(
        body: Center(
          child: [
            GalleryScreen(),
            AboutMe(),
          ][activeIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AstroColors.astroOrange1,
          unselectedItemColor: AstroColors.astroWhite1,
          currentIndex: activeIndex,
          onTap: (index) {
            setState(() {
              activeIndex = index;
            });
          },
          backgroundColor: AstroColors.astroBlue2,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.photo_library_outlined),
              label: 'Gallery',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About me')
          ],
        ),
      ),
    );
  }
}
