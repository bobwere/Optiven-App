import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:optiven/common/failures/news_and_blogs_failure.dart';
import 'package:optiven/common/failures/newsletter_failure.dart';
import 'package:optiven/common/failures/photo_gallery_failure.dart';
import 'package:optiven/common/failures/testimonial_failure.dart';
import 'package:optiven/common/utils/internet_connection.dart';
import 'package:optiven/projects/domain/entities/news_and_blogs_entity.dart';
import 'package:optiven/projects/domain/entities/newsletter_entity.dart';
import 'package:optiven/projects/domain/entities/photo_gallery_entity.dart';
import 'package:optiven/projects/domain/entities/testimonial_entity.dart';
import 'package:optiven/projects/infrastructure/models/news_and_blogs_model/news_and_blogs_model.dart';
import 'package:optiven/projects/infrastructure/models/newsletter_model/newsletter_model.dart';
import 'package:optiven/projects/infrastructure/models/photo_gallery_model/photo_gallery_model.dart';
import 'package:optiven/projects/infrastructure/models/testimonial_model/testimonial_model.dart';
import 'package:rxdart/rxdart.dart';

import '../../../common/failures/project_failure.dart';
import '../../domain/entities/project_entity.dart';
import '../../domain/interfaces/i_project_facade.dart';
import '../models/project_model/project_model.dart';

@LazySingleton(as: IProjectFacade)
class ProjectRepository implements IProjectFacade {
  final Firestore _firestore;

  ProjectRepository(this._firestore);

  @override
  Stream<Either<ProjectFailure, KtList<Project>>> getAllProjects() async* {
    final internetStatus = await isConnected();

    if (!internetStatus) {
      yield left(const ProjectFailure.noInternet());
    } else {
      final projectCollection = _firestore.collection('projects');
      yield* projectCollection
          .orderBy('rank')
          .snapshots()
          .map(
            (snapshot) => right<ProjectFailure, KtList<Project>>(
              snapshot.documents
                  .map((doc) => ProjectModel.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        return left(ProjectFailure.unexpected());
      });
    }
  }

  @override
  Stream<Either<ProjectFailure, KtList<Project>>>
      getAllFeaturedProjects() async* {
    final internetStatus = await isConnected();

    if (!internetStatus) {
      yield left(const ProjectFailure.noInternet());
    } else {
      final projectCollection = _firestore.collection('projects');
      yield* projectCollection
          .where('featured', isEqualTo: true)
          .orderBy('rank')
          .snapshots()
          .map(
            (snapshot) => right<ProjectFailure, KtList<Project>>(
              snapshot.documents
                  .map((doc) => ProjectModel.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        return left(ProjectFailure.unexpected());
      });
    }
  }

  @override
  Stream<Either<TestimonialFailure, KtList<Testimonial>>>
      getAllTestimonials() async* {
    final internetStatus = await isConnected();

    if (!internetStatus) {
      yield left(const TestimonialFailure.noInternet());
    } else {
      final testimonialCollection = _firestore.collection('testimonials');
      yield* testimonialCollection
          .orderBy('rank')
          .snapshots()
          .map(
            (snapshot) => right<TestimonialFailure, KtList<Testimonial>>(
              snapshot.documents
                  .map((doc) => TestimonialModel.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        return left(TestimonialFailure.unexpected());
      });
    }
  }

  @override
  Stream<Either<PhotoGalleryFailure, KtList<PhotoGallery>>>
      getAllPhotos() async* {
    final internetStatus = await isConnected();

    if (!internetStatus) {
      yield left(const PhotoGalleryFailure.noInternet());
    } else {
      final photoGalleryCollection = _firestore.collection('photogallery');
      yield* photoGalleryCollection
          .orderBy('rank')
          .snapshots()
          .map(
            (snapshot) => right<PhotoGalleryFailure, KtList<PhotoGallery>>(
              snapshot.documents
                  .map((doc) => PhotoGalleryModel.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        return left(PhotoGalleryFailure.unexpected());
      });
    }
  }

  @override
  Stream<Either<PhotoGalleryFailure, KtList<PhotoGallery>>>
      getAllAwards() async* {
    final internetStatus = await isConnected();

    if (!internetStatus) {
      yield left(const PhotoGalleryFailure.noInternet());
    } else {
      final awardsCollection = _firestore.collection('awards');
      yield* awardsCollection
          .orderBy('rank')
          .snapshots()
          .map(
            (snapshot) => right<PhotoGalleryFailure, KtList<PhotoGallery>>(
              snapshot.documents
                  .map((doc) => PhotoGalleryModel.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        return left(PhotoGalleryFailure.unexpected());
      });
    }
  }

  @override
  Stream<Either<PhotoGalleryFailure, KtList<PhotoGallery>>>
      getOurTeam() async* {
    final internetStatus = await isConnected();

    if (!internetStatus) {
      yield left(const PhotoGalleryFailure.noInternet());
    } else {
      final awardsCollection = _firestore.collection('ourteam');
      yield* awardsCollection
          .orderBy('rank')
          .snapshots()
          .map(
            (snapshot) => right<PhotoGalleryFailure, KtList<PhotoGallery>>(
              snapshot.documents
                  .map((doc) => PhotoGalleryModel.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        return left(PhotoGalleryFailure.unexpected());
      });
    }
  }

  @override
  Stream<Either<NewsletterFailure, KtList<Newsletter>>>
      getAllNewsletters() async* {
    final internetStatus = await isConnected();

    if (!internetStatus) {
      yield left(const NewsletterFailure.noInternet());
    } else {
      final newsletterCollection = _firestore.collection('newsletter');
      yield* newsletterCollection
          .orderBy('rank')
          .snapshots()
          .map(
            (snapshot) => right<NewsletterFailure, KtList<Newsletter>>(
              snapshot.documents
                  .map((doc) => NewsletterModel.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        return left(NewsletterFailure.unexpected());
      });
    }
  }

  @override
  Stream<Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>>
      getAllNewsAndBlogs() async* {
    final internetStatus = await isConnected();

    if (!internetStatus) {
      yield left(const NewsAndBlogsFailure.noInternet());
    } else {
      final newsAndBlogsCollection = _firestore.collection('newsandblogs');
      yield* newsAndBlogsCollection
          .orderBy('rank')
          .snapshots()
          .map(
            (snapshot) => right<NewsAndBlogsFailure, KtList<NewsAndBlogs>>(
              snapshot.documents
                  .map((doc) => NewsAndBlogsModel.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        return left(NewsAndBlogsFailure.unexpected());
      });
    }
  }

  @override
  Stream<Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>>
      getAllPhilanthropyNews() async* {
    final internetStatus = await isConnected();

    if (!internetStatus) {
      yield left(const NewsAndBlogsFailure.noInternet());
    } else {
      final newsAndBlogsCollection = _firestore.collection('philanthropynews');
      yield* newsAndBlogsCollection
          .orderBy('rank')
          .snapshots()
          .map(
            (snapshot) => right<NewsAndBlogsFailure, KtList<NewsAndBlogs>>(
              snapshot.documents
                  .map((doc) => NewsAndBlogsModel.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        return left(NewsAndBlogsFailure.unexpected());
      });
    }
  }
}
