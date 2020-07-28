// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:optiven/common/config/firebase_injectable_module.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:optiven/projects/infrastructure/repositories/news_and_blogs_repository.dart';
import 'package:optiven/projects/domain/interfaces/i_news_and_blogs_facade.dart';
import 'package:optiven/projects/infrastructure/repositories/newsletter_repository.dart';
import 'package:optiven/projects/domain/interfaces/i_newsletter_facade.dart';
import 'package:optiven/projects/infrastructure/repositories/photo_gallery_repositiory.dart';
import 'package:optiven/projects/domain/interfaces/i_photo_gallery_facade.dart';
import 'package:optiven/projects/infrastructure/repositories/project_repository.dart';
import 'package:optiven/projects/domain/interfaces/i_project_facade.dart';
import 'package:optiven/projects/infrastructure/repositories/testimonial_repository.dart';
import 'package:optiven/projects/domain/interfaces/i_testimonial_facade.dart';
import 'package:optiven/projects/application/news_and_blogs_bloc/news_and_blogs_bloc.dart';
import 'package:optiven/projects/application/newsletter_bloc/newsletter_bloc.dart';
import 'package:optiven/projects/application/our_team_bloc/our_team_bloc.dart';
import 'package:optiven/projects/application/philanthropy_news_bloc/philanthropy_news_bloc.dart';
import 'package:optiven/projects/application/photo_gallery_bloc/photo_gallery_bloc.dart';
import 'package:optiven/projects/application/projects_bloc/project_bloc.dart';
import 'package:optiven/projects/application/testimonial_bloc/testimonial_bloc.dart';
import 'package:optiven/projects/application/awards_bloc/awards_bloc.dart';
import 'package:optiven/projects/application/featured_project_bloc/featured_project_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerLazySingleton<INewsAndBlogsFacade>(
      () => NewsAndBlogsRepository(g<Firestore>()));
  g.registerLazySingleton<INewsletterFacade>(
      () => NewsletterRepository(g<Firestore>()));
  g.registerLazySingleton<IPhotoGalleryFacade>(
      () => PhotoGalleryRepository(g<Firestore>()));
  g.registerLazySingleton<IProjectFacade>(
      () => ProjectRepository(g<Firestore>()));
  g.registerLazySingleton<ITestimonialFacade>(
      () => TestimonialRepository(g<Firestore>()));
  g.registerFactory<NewsAndBlogsBloc>(
      () => NewsAndBlogsBloc(g<INewsAndBlogsFacade>()));
  g.registerFactory<NewsletterBloc>(() => NewsletterBloc(g<IProjectFacade>()));
  g.registerFactory<OurTeamBloc>(() => OurTeamBloc(g<IProjectFacade>()));
  g.registerFactory<PhilanthropyNewsBloc>(
      () => PhilanthropyNewsBloc(g<IProjectFacade>()));
  g.registerFactory<PhotoGalleryBloc>(
      () => PhotoGalleryBloc(g<IProjectFacade>()));
  g.registerFactory<ProjectBloc>(() => ProjectBloc(g<IProjectFacade>()));
  g.registerFactory<TestimonialBloc>(
      () => TestimonialBloc(g<IProjectFacade>()));
  g.registerFactory<AwardsBloc>(() => AwardsBloc(g<IProjectFacade>()));
  g.registerFactory<FeaturedProjectBloc>(
      () => FeaturedProjectBloc(g<IProjectFacade>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
