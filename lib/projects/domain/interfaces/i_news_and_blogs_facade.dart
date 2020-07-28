import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import '../../../common/failures/news_and_blogs_failure.dart';
import '../entities/news_and_blogs_entity.dart';

abstract class INewsAndBlogsFacade {
  Stream<Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>>
      getAllNewsAndBlogs();
  Stream<Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>>
      getAllPhilanthropyNews();
  Future<Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>>
      getFirstNewsAndBlogs();
  Future<Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>>
      getMoreNewsAndBlogs();
}
