import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/photo_gallery_entity.dart';

part 'photo_gallery_model.freezed.dart';
part 'photo_gallery_model.g.dart';

@freezed
abstract class PhotoGalleryModel with _$PhotoGalleryModel {
  factory PhotoGalleryModel({
    @JsonKey(ignore: true) String id,
    String title,
    String description,
    String imageUrl,
    String hash,
  }) = _PhotoGalleryModel;

  factory PhotoGalleryModel.fromDomain(PhotoGallery photoGallery) {
    return PhotoGalleryModel(
      id: photoGallery.id,
      title: photoGallery.title,
      hash: photoGallery.hash,
      description: photoGallery.description,
      imageUrl: photoGallery.imageUrl,
    );
  }

  factory PhotoGalleryModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoGalleryModelFromJson(json);

  factory PhotoGalleryModel.fromFirestore(DocumentSnapshot doc) {
    return PhotoGalleryModel.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}

extension PhotoGalleryModelX on PhotoGalleryModel {
  PhotoGallery toDomain() {
    return PhotoGallery(
      id: id,
      title: title,
      description: description,
      imageUrl: imageUrl,
      hash: hash,
    );
  }
}
