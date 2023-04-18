import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/utils/constans.dart';
import 'package:movie_app/utils/enum.dart';

part '../generated/movie/video.freezed.dart';

part '../generated/movie/video.g.dart';

@freezed
class Video with _$Video {

  const Video._();

  factory Video({
    @JsonKey(name: "id") @Default("") String id,
    @JsonKey(name: "name") @Default("") String name,
    @JsonKey(name: "key") @Default("") String key,
    @JsonKey(name: "site") @Default("") String site,
    @JsonKey(name: "size") @Default(0) int size,
    @JsonKey(name: "type") @Default("") String type,
    @JsonKey(name: "official") @Default(false) bool official,
    @JsonKey(name: "published_at") @Default("") String publishedAt,
  }) = _Video;

  factory Video.fromJson(Map<String, Object?> json) => _$VideoFromJson(json);

  String getVideoUrl() {
    String url;
    if(site == VideoSiteType.youtube.name) {
      url = "${Constants.youtubeLink}$key";
    } else {
      url = "${Constants.vimeoLink}$key";
    }
    return url;
  }
}
