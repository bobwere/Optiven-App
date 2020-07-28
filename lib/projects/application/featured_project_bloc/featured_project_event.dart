part of 'featured_project_bloc.dart';

@freezed
abstract class FeaturedProjectEvent with _$FeaturedProjectEvent {
  const factory FeaturedProjectEvent.getAllFeaturedProjects() =
      _GetAllFeaturedProjects;

  const factory FeaturedProjectEvent.projectsReceived(
    Either<ProjectFailure, KtList<Project>> failureOrProjects,
  ) = _ProjectsReceived;
}
