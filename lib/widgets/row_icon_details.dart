
import 'package:flutter/material.dart';
import 'package:the_movie_db_app/widgets/icon_design.dart';

class RowIconDetails extends StatelessWidget {
  const RowIconDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: const Color.fromARGB(255, 75, 75, 75).withOpacity(0.6),
        ),
        child: const IconDesign(),
      ),
    );
  }
}
