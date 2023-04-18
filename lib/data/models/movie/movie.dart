import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/data/models/movie/genre.dart';
import 'package:movie_app/data/models/movie/video_result.dart';

part '../generated/movie/movie.freezed.dart';

part '../generated/movie/movie.g.dart';

@unfreezed
class Movie with _$Movie {
  const Movie._();

  factory Movie({
    @JsonKey(name: "adult") @Default(false) bool adult,
    @JsonKey(name: "backdrop_path") @Default("") String backdropPath,
    @JsonKey(name: "genre_ids") @Default([]) List<int> genreIds,
    @JsonKey(name: "id") @Default(-1) int id,
    @JsonKey(name: "original_language") @Default("") String originalLanguage,
    @JsonKey(name: "original_title") @Default("") String originalTitle,
    @JsonKey(name: "overview") @Default("") String overview,
    @JsonKey(name: "popularity") @Default(0.0) double popularity,
    @JsonKey(name: "poster_path") @Default("") String posterPath,
    @JsonKey(name: "release_date") @Default("") String releaseDate,
    @JsonKey(name: "runtime") @Default(0) int runtime,
    @JsonKey(name: "title") @Default("") String title,
    @JsonKey(name: "video") @Default(false) bool video,
    @JsonKey(name: "vote_average") @Default(0.0) double voteAverage,
    @JsonKey(name: "vote_count") @Default(0) int voteCount,
    @JsonKey(name: "videos") @Default(VideoResult()) VideoResult videos,

    //Detail
    @JsonKey(name: "genres") @Default([]) List<Genre> genres,
  }) = _Movie;

  factory Movie.fromJson(Map<String, Object?> json) => _$MovieFromJson(json);

  String getReleaseYear() {
    final time = DateTime.parse(releaseDate);
    return time.year.toString();
  }
}
