import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String imageUrl;
  const ImageCard({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        width: 100,
        height: 160,
      ),
    );
  }
}
