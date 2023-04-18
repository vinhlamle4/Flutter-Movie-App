import 'package:freezed_annotation/freezed_annotation.dart';

part '../generated/movie/genre.freezed.dart';

part '../generated/movie/genre.g.dart';

@freezed
class Genre with _$Genre {
  factory Genre({
    @JsonKey(name: "id") @Default(0) int id,
    @JsonKey(name: "name") @Default("") String name,
  }) = _Genre;

  factory Genre.fromJson(Map<String, Object?> json) => _$GenreFromJson(json);
}
