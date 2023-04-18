import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/data/models/movie/video.dart';
import 'package:movie_app/utils/enum.dart';

part '../generated/movie/video_result.freezed.dart';

part '../generated/movie/video_result.g.dart';

@freezed
class VideoResult with _$VideoResult {
  const VideoResult._();

  const factory VideoResult({
    @JsonKey(name: "results") @Default([]) List<Video> results,
  }) = _VideoResult;

  factory VideoResult.fromJson(Map<String, Object?> json) =>
      _$VideoResultFromJson(json);

  bool isHaveTrailer() {
    return results
        .where((element) => element.type == VideoType.trailer.name)
        .toList()
        .isNotEmpty;
  }

  bool isHaveYoutubeTrailer() {
    return results.firstWhereOrNull((element) =>
            element.type == VideoType.trailer.name &&
            element.site == VideoSiteType.youtube.name) !=
        null;
  }

  bool isHaveClip() {
    return results
        .where((element) => element.type == VideoType.clip.name)
        .toList()
        .isNotEmpty;
  }
}
