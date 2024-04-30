/*import 'package:flutter/material.dart';
import 'package:the_movie_db_app/widgets/similar_movie_card.dart';

class ListViewSimilarMovie extends StatelessWidget {
  const ListViewSimilarMovie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: data.similar?.results.length,
      itemBuilder: (context, index) {
        final similarMovie = data.similar?.results[index];
        return SimilarMovieCard(
          title: similarMovie?.title ?? '',
          posterUrl: similarMovie?.posterPath ?? '',
          onTap: () {
          },
        );
      },
    );
  }
}*/