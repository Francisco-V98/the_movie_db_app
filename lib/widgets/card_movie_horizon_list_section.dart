import 'package:flutter/material.dart';

class CardMovieHorizonListSection extends StatelessWidget {
  final String image;
  const CardMovieHorizonListSection({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          image,
          fit: BoxFit.cover,
          width: 100,
          height: 140,
        ),
      ),
    );
  }
}
