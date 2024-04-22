import 'package:flutter/material.dart';

class CastCardName extends StatelessWidget {
  const CastCardName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: 100,
        height: 32,
        decoration: BoxDecoration(
          color:
              Colors.black.withOpacity(0.7),
          borderRadius:
              const BorderRadius.vertical(
            bottom: Radius.circular(8),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.symmetric(
                  horizontal: 8),
          child: Row(
            children: [
              Text(
                'Name'.toLowerCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 16),
            ],
          ),
        ),
      ),
    );
  }
}