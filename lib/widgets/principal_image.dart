import 'package:flutter/material.dart';

class PrincipalImage extends StatelessWidget {
  const PrincipalImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
      ),
      child: Image.network(
        '',
        fit: BoxFit.cover,
        height: 400,
        width: double.infinity,
      ),
    );
  }
}