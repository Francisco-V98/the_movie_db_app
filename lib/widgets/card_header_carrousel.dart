import 'package:flutter/material.dart';
import 'package:the_movie_db_app/screens/dasboard_screen.dart';

class CardHeaderCarrousel extends StatelessWidget {
  final String image;
  final int id;
  const CardHeaderCarrousel({
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
            builder: (context) => const DashboardScreen(),
          ),
        );
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.network(
                image,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
