import 'package:flutter/material.dart';
import 'widgets.dart';

class CarrouselContinueWaching extends StatelessWidget {
  const CarrouselContinueWaching({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleSectionDashboard(),
        const SizedBox(height: 16),
        SizedBox(
          height: 160,
          child: ListView.builder(
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return const Row(
                children: [
                  CardMovieHorizonListSection(),
                  SizedBox(width: 8),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
