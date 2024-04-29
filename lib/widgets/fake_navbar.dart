import 'dart:ui';

import 'package:flutter/material.dart';

class FakeNavBar extends StatelessWidget {
  const FakeNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: const Color.fromARGB(255, 87, 87, 87).withOpacity(0.4),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 5),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Overview",
                  style: TextStyle(
                      color: Color.fromARGB(255, 217, 217, 217),
                      fontSize: 20),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Seasons",
                  style: TextStyle(
                      color: Color.fromARGB(255, 217, 217, 217),
                      fontSize: 20),
                ),
                SizedBox(width: 25),
                Text(
                  "Similar",
                  style: TextStyle(
                      color: Color.fromARGB(255, 217, 217, 217),
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