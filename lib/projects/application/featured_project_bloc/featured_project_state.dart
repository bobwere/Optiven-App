part of 'featured_project_bloc.dart';

@freezed
abstract class FeaturedProjectState with _$FeaturedProjectState {
  const factory FeaturedProjectState.initial() = Initial;
  const factory FeaturedProjectState.loadingData() = LoadingData;
  const factory FeaturedProjectState.loadSuccess(KtList<Project> projects) =
      LoadSuccess;
  const factory FeaturedProjectState.loadFailure(
      ProjectFailure projectFailure) = LoadFailure;
}
