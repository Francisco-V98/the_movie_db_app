import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_db_app/infrastructure/models/credits_model.dart';
import 'package:the_movie_db_app/infrastructure/models/movies_details_model.dart';
import 'package:the_movie_db_app/infrastructure/providers/detail_provider.dart';
import "package:the_movie_db_app/widgets/widgets.dart";

class DetailScreen extends ConsumerWidget {
  final int id;

  const DetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movieData = ref.watch(movieDetailProvider(id.toString()));

return movieData.when(
  data: (data) {
    final detail = data['detail'] as MoviesDetailModel;
    final credits = data['credits'] as Credits;

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 43, 43, 43),
        body: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    PrincipalImage(imageUrl: detail.posterPath ?? ''),
                    const GradientImage(),
                    const HeaderAppBar(),
                  ],
                ),
                const SizedBox(height: 30),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MovieInfo(
                            match: '',
                            releaseDate: detail.releaseDate?.toString() ?? '',
                            duration: detail.runtime?.toString() ?? '',
                          ),
                          const SizedBox(height: 10),
                          MovieDescription(
                              movieDescription: detail.overview ?? ''),
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
                            child:  CastAndCrewCard(
                              castList: credits.cast,
                            ),
                          ),
                          const SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const FakeNavBar(),
            const RowIconHeader(),
          ],
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
