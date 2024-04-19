import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_db_app/infrastructure/providers/lits_movies_provider.dart';
import '../widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 24, 24),
      appBar: AppBarProyect(),
      body: _Body(),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listMoviePopular = ref.watch(listMoviesPopularProvider);
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16),
              listMoviePopular.when(
                data: (data) {
                  return CarouselSlider.builder(
                    itemCount: 10,
                    itemBuilder: (context, index, realIdx) {
                      final movie = data.results![index];
                      final backdropPath = movie.backdropPath;
                      const urlImageBase =
                          'https://media.themoviedb.org/t/p/w400';
                      var imageUrl = urlImageBase + backdropPath!;
                      return CardHeaderCarrousel(
                        image: imageUrl,
                      );
                    },
                    options: CarouselOptions(
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      aspectRatio: 2.0,
                      initialPage: 1,
                      enlargeCenterPage: true,
                      height: 156,
                    ),
                  );
                },
                error: ((error, stackTrace) {
                  return Text(error.toString());
                }),
                loading: () {
                  return const Center(child: CircularProgressIndicator());
                },
              ),
              const SizedBox(height: 24),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarrouselContinueWaching(),
                  SizedBox(height: 24),
                  CarrouselContinueWaching(),
                  SizedBox(height: 24),
                  CarrouselContinueWaching(),
                  SizedBox(height: 120),
                ],
              ),
            ],
          ),
        ),
        const Positioned(
          left: 32,
          right: 32,
          bottom: 16,
          child: BottomNavBarProyect(),
        ),
      ],
    );
  }
}
