import 'package:flutter/material.dart';

class MovieInfo extends StatelessWidget {
  final String match;
  final String releaseDate;
  final String duration;

  const MovieInfo({
    Key? key,
    required this.match,
    required this.releaseDate,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$match% match',
          style: const TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 17),
        ),
        const SizedBox(width: 20),
        Text(
          releaseDate,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15),
        ),
        const SizedBox(width: 10),
        Text(
          duration,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15),
        ),
      ],
    );
  }
}
