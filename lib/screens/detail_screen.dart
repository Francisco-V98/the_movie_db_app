import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:the_movie_db_app/infrastructure/Helpers/helper.dart';
import 'package:the_movie_db_app/widgets/similar_movie_card.dart';
import "package:the_movie_db_app/widgets/widgets.dart";
import 'package:the_movie_db_app/infrastructure/providers/detail_provider.dart';

class DetailScreen extends ConsumerWidget {
  final int id;
  final int? similarMovieId;
  const DetailScreen({super.key, required this.id, this.similarMovieId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailData = ref.watch(movieDetailProvider(id.toString()));
    return detailData.when(
      data: (data) {
        String releaseDate = '';
        if (data.detail?.releaseDate != null) {
          releaseDate =
              DateFormat('dd-MM-yyyy').format(data.detail!.releaseDate!);
        } else {
          releaseDate = 'Fecha de lanzamiento desconocida';
        }

        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 43, 43, 43),
          body: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        PrincipalImage(imageUrl: data.detail?.posterPath ?? ''),
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
                            popularity: data.detail?.popularity ?? 0,
                            releaseDate: releaseDate,
                            duration:
                                Helper.formatDuration(data.detail!.runtime!),
                          ),
                          const SizedBox(height: 10),
                          MovieDescription(
                              movieDescription: data.detail?.overview ?? ''),
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
                              castList: data.credits?.cast,
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
                        itemCount: data.similar?.results.length,
                        itemBuilder: (context, index) {
                          final similarMovie = data.similar?.results[index];
                          return SimilarMovieCard(
                            title: similarMovie?.title ?? '',
                            posterUrl:
                                "https://media.themoviedb.org/t/p/w200${similarMovie?.posterPath}",
                            onTap: () {
                              final similarMovieId = similarMovie?.id ?? 0;
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailScreen(
                                      id: similarMovieId,
                                      similarMovieId: similarMovieId,
                                    ),
                                  ),
                                );
                              }
                            },
                          );
                        },
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        );
      },
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (error, stackTrace) => Scaffold(
        body: Center(
          child: Text('Error: $error'),
        ),
      ),
    );
  }
}
