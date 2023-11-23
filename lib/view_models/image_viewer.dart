import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageViewer {
  ImageViewer(BuildContext context, String image) {
    showGeneralDialog(
      barrierColor: Colors.black,
      transitionDuration: const Duration(milliseconds: 500),
      barrierDismissible: true,
      barrierLabel: 'Barrier',
      context: context,
      pageBuilder: (_, __, ___) => Center(
        child: Hero(
          tag: 'IMAGEVIEW',
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Scaffold(
              backgroundColor: Colors.black,
              body: Container(
                color: Colors.white,
                child: Center(
                  child: PhotoView(
                    imageProvider: AssetImage(image),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
