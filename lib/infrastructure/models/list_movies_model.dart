import 'package:the_movie_db_app/infrastructure/models/movies_details_model.dart';

class ListMoviesModel {
  final int? page;
  final int? totalPages;
  final int? totalResults;
  final List<MoviesDetailModel>? results;

  ListMoviesModel({
    this.page,
    this.totalPages,
    this.totalResults,
    this.results,
  });

  factory ListMoviesModel.fromJson(Map<String, dynamic> json) =>
      ListMoviesModel(
        page: json["page"],
        results: json["results"] == null
            ? []
            : List<MoviesDetailModel>.from(
                json["results"]!.map((x) => MoviesDetailModel.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "results": results == null
            ? []
            : List<dynamic>.from(results!.map((x) => x.toJson())),
        "total_pages": totalPages,
        "total_results": totalResults,
      };
}
