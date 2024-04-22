import 'dart:ui';

import 'package:flutter/material.dart';

class IconDesign extends StatelessWidget {
  const IconDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 9, sigmaY: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildBlurredIconButton(Icons.ios_share),
            _buildBlurredIconButton(Icons.thumb_up),
            _buildBlurredIconButton(Icons.play_arrow),
            _buildBlurredIconButton(Icons.download_sharp)
          ],
        ),
      ),
    );
  }

  Widget _buildBlurredIconButton(IconData iconData) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
              color: const Color.fromARGB(255, 190, 13, 0), width: 2),
        ),
        child: IconButton(
          icon: Icon(iconData, color: Colors.white),
          onPressed: () {},
        ),
      ),
    );
  }
}
