import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:gallery_app/astro_colors.dart';
import 'package:gallery_app/gallery_cards.dart';
import 'package:gallery_app/gallery_item_details.dart';
import 'package:gallery_app/list_of_celestials.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

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
            'My Gallery'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        padding: EdgeInsets.all(16),
        children: [
          for (int i = 0; i < celestials.length; i++)
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => GalleryItemDetails(index: i)));
              },
              child: GalleryCard(index: i),
            )
        ],
      ),
    );
  }
}
