part of 'awards_bloc.dart';

@freezed
abstract class AwardsState with _$AwardsState {
  const factory AwardsState.initial() = Initial;
  const factory AwardsState.loadingData() = LoadingData;
  const factory AwardsState.loadSuccess(KtList<PhotoGallery> photos) =
      LoadSuccess;
  const factory AwardsState.loadFailure(
      PhotoGalleryFailure photoGalleryFailure) = LoadFailure;
}
