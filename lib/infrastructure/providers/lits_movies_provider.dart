import 'package:riverpod/riverpod.dart';
import 'package:the_movie_db_app/infrastructure/models/list_movies_model.dart';
import 'package:the_movie_db_app/infrastructure/service/list_movies_services.dart';

final serviceListMoviesProvider = Provider(
  (ref) => ListMoviesService(),
);

final listMoviesPopularProvider = FutureProvider<ListMoviesModel>((ref) async {
  final listMoviesPopular = ref.watch(serviceListMoviesProvider);
  return listMoviesPopular.getMovieListPopular();
});