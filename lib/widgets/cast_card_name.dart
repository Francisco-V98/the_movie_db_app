import 'package:flutter/material.dart';

class CastCardName extends StatelessWidget {
  final String name;
  const CastCardName({
    super.key, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: 120,
        height: 32,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7),
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Flexible( // Añade esto
                child: Text(
                  name.toLowerCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  overflow: TextOverflow.ellipsis, // Asegúrate de que esto esté aquí para evitar el desbordamiento del texto
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


