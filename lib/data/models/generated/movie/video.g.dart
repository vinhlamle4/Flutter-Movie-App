// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../movie/video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) => _$VideoImpl(
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      key: json['key'] as String? ?? "",
      site: json['site'] as String? ?? "",
      size: (json['size'] as num?)?.toInt() ?? 0,
      type: json['type'] as String? ?? "",
      official: json['official'] as bool? ?? false,
      publishedAt: json['published_at'] as String? ?? "",
    );

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'key': instance.key,
      'site': instance.site,
      'size': instance.size,
      'type': instance.type,
      'official': instance.official,
      'published_at': instance.publishedAt,
    };
