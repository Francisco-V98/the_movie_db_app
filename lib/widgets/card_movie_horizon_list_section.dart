import 'package:flutter/material.dart';

class CardMovieHorizonListSection extends StatelessWidget {
  const CardMovieHorizonListSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://media.istockphoto.com/id/1289461335/photo/portrait-of-a-handsome-black-man.jpg?s=612x612&w=0&k=20&c=gDibbpmkeV04ta3ociwAgpqcjdeU5sI1nnd78wrnz-g=',
              fit: BoxFit.cover,
              width: 100,
              height: 140,
            ),
          ),
        ],
      ),
    );
  }
}
