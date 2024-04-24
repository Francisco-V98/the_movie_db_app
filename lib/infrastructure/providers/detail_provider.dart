import 'package:riverpod/riverpod.dart';
import 'package:the_movie_db_app/infrastructure/service/detail_screen_service.dart';

final serviceDetailMoviesProvider = Provider(
  (ref) => DetailMoviesService(),
);

final movieDetailProvider = FutureProvider.autoDispose.family<dynamic, String>((ref, id) async {
  final detailMoviesService = ref.watch(serviceDetailMoviesProvider);
  final movieDetail = await detailMoviesService.getMovieDetail(id);
  final credits = await detailMoviesService.getMovieCredits(id);
  return {'detail': movieDetail, 'credits': credits};
});

