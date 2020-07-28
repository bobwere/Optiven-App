import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:optiven/common/failures/news_and_blogs_failure.dart';
import 'package:optiven/common/failures/newsletter_failure.dart';
import 'package:optiven/common/failures/photo_gallery_failure.dart';
import 'package:optiven/common/failures/testimonial_failure.dart';
import 'package:optiven/projects/domain/entities/news_and_blogs_entity.dart';
import 'package:optiven/projects/domain/entities/newsletter_entity.dart';
import 'package:optiven/projects/domain/entities/photo_gallery_entity.dart';
import 'package:optiven/projects/domain/entities/testimonial_entity.dart';

import '../../../common/failures/project_failure.dart';
import '../entities/project_entity.dart';

abstract class IProjectFacade {
  Stream<Either<ProjectFailure, KtList<Project>>> getAllProjects();
  Stream<Either<ProjectFailure, KtList<Project>>> getAllFeaturedProjects();
  Stream<Either<TestimonialFailure, KtList<Testimonial>>> getAllTestimonials();
  Stream<Either<PhotoGalleryFailure, KtList<PhotoGallery>>> getAllPhotos();
  Stream<Either<PhotoGalleryFailure, KtList<PhotoGallery>>> getAllAwards();
  Stream<Either<PhotoGalleryFailure, KtList<PhotoGallery>>> getOurTeam();
  Stream<Either<NewsletterFailure, KtList<Newsletter>>> getAllNewsletters();
  Stream<Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>>
      getAllNewsAndBlogs();
  Stream<Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>>
      getAllPhilanthropyNews();
}
