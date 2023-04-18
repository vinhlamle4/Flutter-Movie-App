import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/data/models/movie/movie.dart';

part '../generated/movie/movie_result.freezed.dart';
part '../generated/movie/movie_result.g.dart';

@unfreezed
class MovieResult with _$MovieResult {
  factory MovieResult({
    @JsonKey(name: "page") @Default(0) int page,
    @JsonKey(name: "results") @Default([]) List<Movie> results,
    @JsonKey(name: "total_pages") @Default(0) int totalPages,
    @JsonKey(name: "total_results") @Default(0) int totalResults,
  }) = _MovieResult;

  factory MovieResult.fromJson(Map<String, Object?> json) =>
      _$MovieResultFromJson(json);
}
