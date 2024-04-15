import 'package:flutter/material.dart';

class AppBarProyect extends StatelessWidget implements PreferredSizeWidget {
  const AppBarProyect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      leading: const Icon(Icons.menu_rounded),
      centerTitle: true,
      title: const Text('Peliculas'),
      actions: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.white),
            shape: BoxShape.circle,
          ),
          child: const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 16,
            backgroundImage: NetworkImage(
              'https://media.istockphoto.com/id/1289461335/photo/portrait-of-a-handsome-black-man.jpg?s=612x612&w=0&k=20&c=gDibbpmkeV04ta3ociwAgpqcjdeU5sI1nnd78wrnz-g=',
            ),
          ),
        ),
        const SizedBox(width: 16),
      ],
    );
  }

  @override
  // TOO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}
