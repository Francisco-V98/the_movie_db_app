import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class HeaderCarrousel extends StatelessWidget {
  const HeaderCarrousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 3,
      itemBuilder: (context, index, realIdx) {
        return const CardHeaderCarrousel();
      },
      options: CarouselOptions(
        enableInfiniteScroll: true,
        autoPlay: true,
        aspectRatio: 2.0,
        initialPage: 1,
        enlargeCenterPage: true,
      ),
    );
  }
}
