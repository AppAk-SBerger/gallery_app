import 'package:flutter/material.dart';

import 'package:gallery_app/astro_colors.dart';
import 'package:gallery_app/list_of_celestials.dart';

class GalleryCard extends StatelessWidget {
  int index;

  GalleryCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      color: AstroColors.astroBlue2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(celestials[index].imageOfCelestial),
            ),
          ),
          Center(
            child: Text(
                style: TextStyle(color: AstroColors.astroWhite1),
                celestials[index].nameofCelestial),
          )
        ],
      ),
    );
  }
}
