
import 'package:flutter/material.dart';
import "package:the_movie_db_app/widgets/widgets.dart";

class RowIconHeader extends StatelessWidget {
  const RowIconHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 360,
      left: 16,
      right: 16,
      child: RowIconDetails(),
    );
  }
}
