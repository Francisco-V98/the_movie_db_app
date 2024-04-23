import 'package:riverpod/riverpod.dart';
import 'package:the_movie_db_app/infrastructure/models/movies_details_model.dart';
import 'package:the_movie_db_app/infrastructure/service/detail_screen_service.dart';

final serviceDetailMoviesProvider = Provider(
  (ref) => DetailMoviesService(),
);

/*final detailMoviesPopularProvider = FutureProvider<MoviesDetailModel>((ref) async {
  final detailMoviesPopular = ref.watch(serviceDetailMoviesProvider);
  final String id = ref.watch(movieIdProvider);
  return detailMoviesPopular.getMovieDetail(id);
});*/
