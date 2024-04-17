import 'package:riverpod/riverpod.dart';
import 'package:the_movie_db_app/infrastructure/models/list_movies_model.dart';
import 'package:the_movie_db_app/infrastructure/service/list_movies_services.dart';

final listMoviesProvider = FutureProvider<ListMoviesModel>((ref) async {
  final listMoviesService = ListMoviesService();
  return await listMoviesService.getMovieListPopular();
});
