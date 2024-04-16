import 'package:flutter/material.dart';

class TitleSectionDashboard extends StatelessWidget {
  const TitleSectionDashboard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'continue'.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          'watching'.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 12),
        const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white,
          size: 16,
        ),
      ],
    );
  }
}