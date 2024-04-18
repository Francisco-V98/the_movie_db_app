import 'package:dio/dio.dart';
import 'package:the_movie_db_app/infrastructure/models/list_movies_model.dart';

class ListMoviesService {
  var dio = Dio();
  final String baseUrl = 'https://api.themoviedb.org/3/movie/';

  Future<ListMoviesModel> getMovieListPopular() async {
    String url = '$baseUrl/popular';

    try {
      Response response = await dio.get(url);
      if (response.statusCode == 200) {
        return ListMoviesModel.fromJson(response.data);
      } else {
        throw Exception(
            'Failed to load List Movies Popular: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load List Movies Popular: $e');
    }
  }
}
