import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_gallery_failure.freezed.dart';

@freezed
abstract class PhotoGalleryFailure with _$PhotoGalleryFailure {
  const factory PhotoGalleryFailure.unexpected() = Unexpected;
  const factory PhotoGalleryFailure.noInternet() = NoInternet;
}
