import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class HeaderCarrousel extends StatelessWidget {
  const HeaderCarrousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const CardHeaderCarrousel();
        },
      ),
    );
  }
}