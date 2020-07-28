part of 'photo_gallery_bloc.dart';

@freezed
abstract class PhotoGalleryState with _$PhotoGalleryState {
  const factory PhotoGalleryState.initial() = Initial;
  const factory PhotoGalleryState.loadingData() = LoadingData;
  const factory PhotoGalleryState.loadSuccess(KtList<PhotoGallery> photos) =
      LoadSuccess;
  const factory PhotoGalleryState.loadFailure(
      PhotoGalleryFailure photoGalleryFailure) = LoadFailure;
}
