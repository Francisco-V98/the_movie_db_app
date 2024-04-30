import 'package:flutter/material.dart';
import 'package:the_movie_db_app/infrastructure/Helpers/helper.dart';
import 'package:the_movie_db_app/infrastructure/providers/detail_provider.dart';
import 'package:the_movie_db_app/widgets/similar_movie_card.dart';
import 'package:the_movie_db_app/widgets/widgets.dart';

class BodyDetailScreen extends StatelessWidget {
  const BodyDetailScreen({
    super.key,
    required this.releaseDate,
    required this.detailData,
  });

  final String releaseDate;
  final DetailModel detailData; // Añade el parámetro detailData

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Column(
            children: [
              Stack(
                children: [
                  PrincipalImage(imageUrl: detailData.detail?.posterPath ?? ''), // Usa detailData en lugar de data
                  const GradientImage(),
                  const HeaderAppBar(),
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MovieInfo(
                        match: '',
                        releaseDate: releaseDate,
                        duration:
                            Helper.formatDuration(detailData.detail!.runtime!)), // Usa detailData en lugar de data
                    const SizedBox(height: 10),
                    MovieDescription(
                        movieDescription: detailData.detail?.overview ?? ''), // Usa detailData en lugar de data
                    const SizedBox(height: 20),
                    const Text(
                      'Cast & Crew',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 120,
                      child: CastAndCrewCard(
                        castList: detailData.credits?.cast, // Usa detailData en lugar de data
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FakeNavBar(),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              const RowIconHeader(),
            ],
          );
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Películas Similares',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: detailData.similar?.results.length, 
                  itemBuilder: (context, index) {
                    final similarMovie = detailData.similar?.results[index]; 
                    return SimilarMovieCard(
                      title: similarMovie?.title ?? '',
                      // posterUrl: "https://media.themoviedb.org/t/p/w200${similarMovie?.backdropPath}",
                      posterUrl: "jesus",
                      onTap: () {},
                    );
                  },
                ),
              ),
            ],
          );
        }
      },
    );
  }
}