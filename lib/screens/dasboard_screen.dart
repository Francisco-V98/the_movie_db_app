import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie_db_app/infrastructure/models/list_movies_model.dart';
import 'package:the_movie_db_app/infrastructure/providers/lits_movies_provider.dart';
import 'package:the_movie_db_app/infrastructure/providers/pagination_controller.dart';
import '../widgets/widgets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 31, 31),
      appBar: AppBarProyect(),
      body: _Body(),
    );
  }
}

class _Body extends ConsumerStatefulWidget {
  const _Body();

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends ConsumerState<_Body> {
  
  // @override
  // void initState() {
  //   super.initState();
  //   ref.read(listMoviesPopularProvider);
  //   ref.read(listMoviesNowPlayingProvider(1));
  //   ref.read(listMoviesTopRatedProvider);
  //   ref.read(listMoviesUpcomingProvider);
  // }

  @override
  Widget build(BuildContext context) {
    final listMoviePopular = ref.watch(listMoviesPopularProvider);
    final listMovieNowPlaying = ref.watch(listMoviesNowPlayingProvider(1));
    final listMovieTopRated = ref.watch(listMoviesTopRatedProvider);
    final listMovieUpcoming = ref.watch(listMoviesUpcomingProvider);
    final controller = ref.read(paginationControllerProvider);

    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              listMoviePopular.when(
                data: (data) {
                  return headerCarrousel(context, data);
                },
                error: ((error, stackTrace) {
                  return Text(error.toString());
                }),
                loading: () {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  listMovieNowPlaying.when(
                    data: (data) {
                      return listMovies(controller, data, 'Now', 'Playing');
                    },
                    error: ((error, stackTrace) {
                      return Text(error.toString());
                    }),
                    loading: () {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    },
                  ),
                  listMovieUpcoming.when(
                    data: (data) {
                      return listMovies(controller, data, 'Up', 'Comming');
                    },
                    error: ((error, stackTrace) {
                      return Text(error.toString());
                    }),
                    loading: () {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    },
                  ),
                  listMovieTopRated.when(
                    data: (data) {
                      return listMovies(controller, data, 'Top', 'Rated');
                    },
                    error: ((error, stackTrace) {
                      return Text(error.toString());
                    }),
                    loading: () {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 100),
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

  Widget listMovies(PaginationController controller, ListMoviesModel data,
      String titleThing, String titleBold) {
    return Stack(
      children: [
        TitleSectionDashboard(titleThing: titleThing, titleBold: titleBold),
        SizedBox(
          height: 200,
          child: ListView.builder(
            // controller: controller.scrollController,
            itemCount: data.results!.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              final movie = data.results![index];
              final posterPath = movie.posterPath;
              const urlImageBase = 'https://media.themoviedb.org/t/p/w400';
              var imageUrl = urlImageBase + posterPath!;
              return Row(
                children: [
                  const SizedBox(width: 8),
                  Stack(
                    children: [
                      CardMovieHorizonListSection(
                        image: imageUrl,
                        id: movie.id!,
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget headerCarrousel(BuildContext context, ListMoviesModel data) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider.builder(
        itemCount: 20,
        itemBuilder: (context, index, realIdx) {
          final movie = data.results![index];
          final backdropPath = movie.backdropPath;
          const urlImageBase = 'https://media.themoviedb.org/t/p/w400';
          var imageUrl = urlImageBase + backdropPath!;
          return CardHeaderCarrousel(image: imageUrl, id: movie.id!);
        },
        options: CarouselOptions(
          enableInfiniteScroll: true,
          autoPlay: true,
          aspectRatio: 2.0,
          initialPage: 1,
          enlargeCenterPage: true,
          height: 156,
        ),
      ),
    );
  }
}
