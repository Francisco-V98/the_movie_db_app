import 'package:riverpod/riverpod.dart';
import 'package:the_movie_db_app/infrastructure/models/movies_details_model.dart';
import 'package:the_movie_db_app/infrastructure/service/detail_screen_service.dart';

final serviceDetailMoviesProvider = Provider(
  (ref) => DetailMoviesService(),
);

final detailMoviesPopularProvider =
    FutureProvider.family<MoviesDetailModel, String>((ref, id) async {
  final detailMoviesService = ref.watch(serviceDetailMoviesProvider);
  return detailMoviesService.getMovieDetail(id);
});
