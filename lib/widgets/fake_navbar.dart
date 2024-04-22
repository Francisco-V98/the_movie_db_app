import 'dart:ui';

import 'package:flutter/material.dart';

class FakeNavBar extends StatelessWidget {
  const FakeNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 925,
      bottom: 30,
      left: 75,
      right: 75,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: const Color.fromARGB(255, 87, 87, 87).withOpacity(0.6),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Overview",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Seasons",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(width: 25),
                Text(
                  "Similar",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}