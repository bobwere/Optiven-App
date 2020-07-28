part of 'awards_bloc.dart';

@freezed
abstract class AwardsEvent with _$AwardsEvent {
  const factory AwardsEvent.getAllAwards() = _GetAllAwards;

  const factory AwardsEvent.photosReceived(
    Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos,
  ) = _PhotosReceived;
}
