import 'package:flutter/material.dart';

class PrincipalImage extends StatelessWidget {
  const PrincipalImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
      ),
      child: Image.network(
        'https://media.istockphoto.com/id/1289461335/photo/portrait-of-a-handsome-black-man.jpg?s=612x612&w=0&k=20&c=gDibbpmkeV04ta3ociwAgpqcjdeU5sI1nnd78wrnz-g=',
        fit: BoxFit.cover,
        height: 400,
        width: double.infinity,
      ),
    );
  }
}