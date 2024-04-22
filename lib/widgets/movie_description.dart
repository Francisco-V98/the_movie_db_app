import 'package:flutter/material.dart';

class MovieDescription extends StatelessWidget {
  const MovieDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'A criminal mastermind who goes by "The Professor" has a plan to pull off the biggest heist in recorded history -- to print billions of euros in the Royal Mint of Spain...',
      style: TextStyle(color: Color.fromARGB(255, 187, 187, 187)),
    );
  }
}
