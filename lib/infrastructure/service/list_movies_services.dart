import 'package:dio/dio.dart';
import 'package:the_movie_db_app/infrastructure/models/list_movies_model.dart';

class ListMoviesService {
  var dio = Dio();
  final String baseUrl = 'https://api.themoviedb.org/3/movie/';

  Map<String, dynamic> headers = {
    'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwZDVlZDhmNGIyMDQ4YTA0ZGFkMWI5YWEyODAzZjA3ZSIsInN1YiI6IjY2MWQzNDg3Y2I2ZGI1MDBjOTA4YmNlYiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.bb_aIhlKry-w3zHqK5NJ7dp3xLOp4xXMXqdnJU96-ic',
    'Content-Type': 'application/json',
  };

  Future<ListMoviesModel> getMovieListPopular() async {
    String url = '$baseUrl/popular';

    try {
      Response response = await dio.get(
        url,
        options: Options(headers: headers),
      );
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
