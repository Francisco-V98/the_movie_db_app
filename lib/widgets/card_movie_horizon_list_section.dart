import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:the_movie_db_app/screens/detail_screen.dart';

class CardMovieHorizonListSection extends StatelessWidget {
  final String image;
  final int id;
  const CardMovieHorizonListSection({
    super.key,
    required this.image,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(id: id),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            width: 100,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Stack(
                children: [
                  Image.network(
                    image,
                    fit: BoxFit.cover,
                    width: 100,
                    height: 140,
                  ),
                  Positioned.fill(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(color: Colors.transparent),
                    ),
                  ),
                  Image.network(
                    image,
                    fit: BoxFit.cover,
                    width: 100,
                    height: 140,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
