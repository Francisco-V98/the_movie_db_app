import 'package:flutter/material.dart';
import 'package:the_movie_db_app/screens/detail_screen.dart';
import 'package:palette_generator/palette_generator.dart';

class CardMovieHorizonListSection extends StatefulWidget {
  final String image;
  final int id;
  const CardMovieHorizonListSection({
    super.key,
    required this.image,
    required this.id,
  });

  @override
  State<CardMovieHorizonListSection> createState() =>
      _CardMovieHorizonListSectionState();
}

class _CardMovieHorizonListSectionState extends State<CardMovieHorizonListSection> {
  late Color _shadowColor = Colors.transparent;

    @override
  void initState() {
    super.initState();
    _generatePalette();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _generatePalette() async {
    final paletteGenerator = await PaletteGenerator.fromImageProvider(
      NetworkImage(
          widget.image),
    );

    if (mounted) {
      setState(() {
        _shadowColor = paletteGenerator.dominantColor!.color;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(id: widget.id),
          ),
        );
      },
      child: Container(
        width: 100,
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: _shadowColor.withOpacity(0.7),
              blurRadius: 24,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            widget.image,
            fit: BoxFit.cover,
            width: 100,
            height: 140,
          ),
        ),
      ),
    );
  }
}
