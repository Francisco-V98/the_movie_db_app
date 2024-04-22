import 'package:flutter/material.dart';
import "package:the_movie_db_app/widgets/widgets.dart";

class CastAndCrewCard extends StatelessWidget {
  const CastAndCrewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          children: [
            Container(
              width: 100,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Stack(
                children: [
                  ImageCard(),
                  CastCardName(),
                ],
              ),
            ),
            const SizedBox(width: 8),
          ],
        );
      },
    );
  }
}



