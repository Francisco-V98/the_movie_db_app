import 'package:flutter/material.dart';

class TitleSectionDashboard extends StatelessWidget {
  final String? titleThing;
  final String? titleBold;
  const TitleSectionDashboard({
    super.key,
    this.titleThing = '',
    this.titleBold = '',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          Text(
            titleThing!.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(width: 6),
          Text(
            titleBold!.toUpperCase(),
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
      ),
    );
  }
}
