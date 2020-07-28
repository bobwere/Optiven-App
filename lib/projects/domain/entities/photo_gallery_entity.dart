import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'photo_gallery_entity.freezed.dart';

@freezed
abstract class PhotoGallery with _$PhotoGallery {
  const factory PhotoGallery(
      {String id,
      String title,
      String description,
      String imageUrl,
      String hash}) = _PhotoGallery;

  factory PhotoGallery.empty() =>
      PhotoGallery(id: '', title: '', imageUrl: '', description: '', hash: '');
}
