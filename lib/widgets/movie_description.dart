import 'package:flutter/material.dart';

class MovieDescription extends StatelessWidget {
  final String movieDescription;
  const MovieDescription({
    super.key, required this.movieDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      movieDescription,
      style: const TextStyle(color: Color.fromARGB(255, 187, 187, 187)),
    );
  }
}
