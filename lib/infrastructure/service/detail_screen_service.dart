import 'package:dio/dio.dart';
import 'package:the_movie_db_app/infrastructure/models/movies_details_model.dart';

class DetailMoviesService {
  var dio = Dio();
  final String baseUrl = 'https://api.themoviedb.org/3/movie/';

  Map<String, dynamic> headers = {
    'Authorization':
      'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwZDVlZDhmNGIyMDQ4YTA0ZGFkMWI5YWEyODAzZjA3ZSIsInN1YiI6IjY2MWQzNDg3Y2I2ZGI1MDBjOTA4YmNlYiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.bb_aIhlKry-w3zHqK5NJ7dp3xLOp4xXMXqdnJU96-ic',
    'Content-Type': 'application/json',
  };

  Future<MoviesDetailModel> getMovieDetail(String id) async {
    String url = '$baseUrl/$id';

    try {
      Response response = await dio.get(
        url,
        options: Options(headers: headers),
      );
      if (response.statusCode == 200) {
        return MoviesDetailModel.fromJson(response.data);
      } else {
        throw Exception(
            'Failed to load Movie Detail: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load Movie Detail: $e');
    }
  }
}
