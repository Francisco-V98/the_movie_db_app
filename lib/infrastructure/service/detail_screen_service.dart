import 'package:dio/dio.dart';
import 'package:the_movie_db_app/infrastructure/models/credits_model.dart';
import 'package:the_movie_db_app/infrastructure/models/movies_details_model.dart';
import 'package:the_movie_db_app/infrastructure/models/similar_movies_details.dart';

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
  
  Future<Credits> getMovieCredits(String id) async {
  String url = '$baseUrl/$id/credits';

  try {
    Response response = await dio.get(
      url,
      options: Options(headers: headers),
    );
    if (response.statusCode == 200) {
      return Credits.fromJson(response.data);
    } else {
      throw Exception('Failed to load Movie Credits: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Failed to load Movie Credits: $e');
  }
}
Future<List<MoviesDetailModel>> getMoviesByGenre(String genreId) async {
    String url = '$baseUrl/discover/movie';
    
    try {
      Response response = await dio.get(
        url,
        queryParameters: {
          'api_key': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwZDVlZDhmNGIyMDQ4YTA0ZGFkMWI5YWEyODAzZjA3ZSIsInN1YiI6IjY2MWQzNDg3Y2I2ZGI1MDBjOTA4YmNlYiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.bb_aIhlKry-w3zHqK5NJ7dp3xLOp4xXMXqdnJU96-ic',
          'with_genres': genreId,
        },
        options: Options(headers: headers),
      );
      if (response.statusCode == 200) {
        List<dynamic> results = response.data['results'];
        List<MoviesDetailModel> movies = results.map((json) => MoviesDetailModel.fromJson(json)).toList();
        return movies;
      } else {
        throw Exception('Failed to load Movies by Genre: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load Movies by Genre: $e');
    }
  }
  Future<Similar> getSimilarMovies(String id) async {
  String url = '$baseUrl/$id/similar';

  try {
    Response response = await dio.get(
      url,
      options: Options(headers: headers),
    );
    if (response.statusCode == 200) {
      if (response.data != null) {
        return Similar.fromJson(response.data);
      } else {
        throw Exception('Failed to load Similar Movies: Response data is null');
      }
    } else {
      throw Exception('Failed to load Similar Movies: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Failed to load Similar Movies: $e');
  }
}


}
