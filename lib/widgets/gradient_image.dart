import 'package:flutter/material.dart';

class GradientImage extends StatelessWidget {
  const GradientImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomCenter,
          colors: [Colors.black26, Colors.black],
        ),
      ),
    );
  }
}