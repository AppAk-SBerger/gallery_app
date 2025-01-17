import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:gallery_app/astro_colors.dart';
import 'package:gallery_app/list_of_celestials.dart';

class GalleryItemDetails extends StatelessWidget {
  final int index;

  const GalleryItemDetails({super.key, required this.index});

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
        leading: IconButton(
          color: AstroColors.astroWhite1,
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.close),
        ),
        title: Text(
            style: TextStyle(color: AstroColors.astroOrange1, fontWeight: FontWeight.bold),
            'Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 8,
        children: [
          Image(
            fit: BoxFit.cover,
            image: AssetImage(celestials[index].imageOfCelestial),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24, 8, 24, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Text(
                    style: TextStyle(
                      color: AstroColors.astroOrange1,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    celestials[index].nameofCelestial),
                Text(
                    style: TextStyle(
                      color: AstroColors.astroWhite1,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    celestials[index].date),
                SizedBox(
                  height: 235,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Text(
                        style: TextStyle(
                          color: AstroColors.astroWhite1,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        celestials[index].descriptionOfCelestial),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
