part of 'our_team_bloc.dart';

@freezed
abstract class OurTeamState with _$OurTeamState {
  const factory OurTeamState.initial() = Initial;
  const factory OurTeamState.loadingData() = LoadingData;
  const factory OurTeamState.loadSuccess(KtList<PhotoGallery> photos) =
      LoadSuccess;
  const factory OurTeamState.loadFailure(
      PhotoGalleryFailure photoGalleryFailure) = LoadFailure;
}
