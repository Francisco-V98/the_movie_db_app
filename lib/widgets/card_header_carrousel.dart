import 'package:flutter/material.dart';

class CardHeaderCarrousel extends StatelessWidget {
  final String image;
  const CardHeaderCarrousel({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Image.network(
        image,
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
