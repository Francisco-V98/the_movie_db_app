import 'package:flutter/material.dart';

class PrincipalImage extends StatelessWidget {
  final String imageUrl;

  const PrincipalImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final completeImageUrl = 'https://media.themoviedb.org/t/p/w400$imageUrl';

    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
      ),
      child: Image.network(
        completeImageUrl,
        fit: BoxFit.cover,
        height: 400,
        width: double.infinity,
      ),
    );
  }
}
