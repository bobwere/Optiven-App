part of 'our_team_bloc.dart';

@freezed
abstract class OurTeamEvent with _$OurTeamEvent {
  const factory OurTeamEvent.getOurTeam() = _GetOurTeam;

  const factory OurTeamEvent.photosReceived(
    Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos,
  ) = _PhotosReceived;
}
