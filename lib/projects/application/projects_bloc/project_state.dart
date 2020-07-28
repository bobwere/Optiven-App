part of 'project_bloc.dart';

@freezed
abstract class ProjectState with _$ProjectState {
  const factory ProjectState.initial() = Initial;
  const factory ProjectState.loadingData() = LoadingData;
  const factory ProjectState.loadSuccess(KtList<Project> projects) =
      LoadSuccess;
  const factory ProjectState.loadFailure(ProjectFailure projectFailure) =
      LoadFailure;
}
