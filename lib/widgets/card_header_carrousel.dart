import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:the_movie_db_app/screens/detail_screen.dart';

class CardHeaderCarrousel extends StatefulWidget {
  final String image;
  final int id;
  const CardHeaderCarrousel({
    super.key,
    required this.image,
    required this.id,
  });

  @override
  State<CardHeaderCarrousel> createState() => _CardHeaderCarrouselState();
}

class _CardHeaderCarrouselState extends State<CardHeaderCarrousel> {
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
      NetworkImage(widget.image),
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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: _shadowColor.withOpacity(0.3),
              blurRadius: 16,
              offset: const Offset(0, 8),
              spreadRadius: -6,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.network(
              widget.image,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ),
      ),
    );
  }
}
