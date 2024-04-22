import 'dart:ui';

import 'package:flutter/material.dart';

class CardMovieHorizonListSection extends StatelessWidget {
  final String image;
  const CardMovieHorizonListSection({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Stack(
              children: [
                
                Image.network(
                  image,
                  fit: BoxFit.cover,
                  width: 100,
                  height: 140,
                ),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(color: Colors.transparent),
                  ),
                ),
                Image.network(
                  image,
                  fit: BoxFit.cover,
                  width: 100,
                  height: 140,
                ),
                
              ],
            ),
          ),
        ),
      ],
    );
  }
}
