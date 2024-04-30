import 'package:riverpod/riverpod.dart';

import 'package:the_movie_db_app/infrastructure/models/credits_model.dart';
import 'package:the_movie_db_app/infrastructure/models/movies_details_model.dart';
import 'package:the_movie_db_app/infrastructure/models/similar_movies_details.dart';

import 'package:the_movie_db_app/infrastructure/service/detail_screen_service.dart';

class DetailModel {
  final MoviesDetailModel? detail;
  final Credits? credits;
  final Similar? similar;

  DetailModel({this.similar, required this.detail, required this.credits});
}

final serviceDetailMoviesProvider = Provider(
  (ref) => DetailMoviesService(),
);


final movieDetailProvider = FutureProvider.autoDispose.family<DetailModel, String>((ref, id) async {
  final detailMoviesService = ref.watch(serviceDetailMoviesProvider);
  final movieDetail = await detailMoviesService.getMovieDetail(id);
  final credits = await detailMoviesService.getMovieCredits(id);
  final similar = await detailMoviesService.getSimilarMovies(id); // Agregamos esta línea
  return DetailModel(detail: movieDetail, credits: credits, similar: similar); // Actualizamos el retorno
});


