import 'package:riverpod/riverpod.dart';
import 'package:the_movie_db_app/infrastructure/models/list_movies_model.dart';
import 'package:the_movie_db_app/infrastructure/providers/pagination_controller.dart';
import 'package:the_movie_db_app/infrastructure/service/list_movies_services.dart';

final serviceListMoviesProvider = Provider(
  (ref) => ListMoviesService(),
);

final paginationControllerProvider =
    Provider<PaginationController>((ref) => PaginationController());

final listMoviesPopularProvider = FutureProvider<ListMoviesModel>((ref) async {
  final listMoviesPopular = ref.watch(serviceListMoviesProvider);
  return listMoviesPopular.getMovieListPopular();
});

// final listMoviesNowPlayingProvider = FutureProvider<ListMoviesModel>((ref) async {
//   final listMoviesNowPlaying = ref.watch(serviceListMoviesProvider);
//   return listMoviesNowPlaying.getMovieListNowPlaying();
// });

final listMoviesNowPlayingProvider =
    FutureProvider.autoDispose.family<ListMoviesModel, int>((ref, page) async {
  final listMoviesService = ref.watch(serviceListMoviesProvider);
  try {
    return await listMoviesService.getMovieListNowPlaying(page);
  } catch (e) {
    throw Exception('Failed to load List Movies Now Playing: $e');
  }
});

final listMoviesTopRatedProvider = FutureProvider<ListMoviesModel>((ref) async {
  final listMoviesTopRated = ref.watch(serviceListMoviesProvider);
  return listMoviesTopRated.getMovieListTopRated();
});

final listMoviesUpcomingProvider = FutureProvider<ListMoviesModel>((ref) async {
  final listMoviesUpcoming = ref.watch(serviceListMoviesProvider);
  return listMoviesUpcoming.getMovieListUpcoming();
});
