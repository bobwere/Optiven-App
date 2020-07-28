part of 'photo_gallery_bloc.dart';

@freezed
abstract class PhotoGalleryEvent with _$PhotoGalleryEvent {
  const factory PhotoGalleryEvent.getAllPhotos() = _GetAllPhotos;

  const factory PhotoGalleryEvent.photosReceived(
    Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos,
  ) = _PhotosReceived;
}
