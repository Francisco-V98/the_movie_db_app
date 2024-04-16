import 'package:flutter/material.dart';

class CardHeaderCarrousel extends StatelessWidget {
  const CardHeaderCarrousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Image.network(
          'https://media.istockphoto.com/id/1289461335/photo/portrait-of-a-handsome-black-man.jpg?s=612x612&w=0&k=20&c=gDibbpmkeV04ta3ociwAgpqcjdeU5sI1nnd78wrnz-g=',
          fit: BoxFit.cover,
          // height: 172,
          width: MediaQuery.of(context).size.width - 56,
        ),
      ),
    );
  }
}