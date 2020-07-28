import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:optiven/common/utils/internet_connection.dart';
import 'package:rxdart/rxdart.dart';

import '../../../common/failures/news_and_blogs_failure.dart';
import '../../domain/entities/news_and_blogs_entity.dart';
import '../../domain/interfaces/i_news_and_blogs_facade.dart';
import '../models/news_and_blogs_model/news_and_blogs_model.dart';

@LazySingleton(as: INewsAndBlogsFacade)
class NewsAndBlogsRepository implements INewsAndBlogsFacade {
  final Firestore _firestore;
  List<DocumentSnapshot> documentList = [];

  NewsAndBlogsRepository(this._firestore);

  @override
  Stream<Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>>
      getAllNewsAndBlogs() async* {
    final internetStatus = await isConnected();

    if (!internetStatus) {
      yield left(const NewsAndBlogsFailure.noInternet());
    } else {
      final newsAndBlogsCollection = _firestore.collection('newsandblogs');
      yield* newsAndBlogsCollection
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
  Future<Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>>
      getFirstNewsAndBlogs() async {
    try {
      final internetStatus = await isConnected();

      if (!internetStatus) {
        return left(NewsAndBlogsFailure.noInternet());
      }
      final newsAndBlogsCollection = _firestore.collection('newsandblogs');
      QuerySnapshot query =
          await newsAndBlogsCollection.orderBy("rank").limit(7).getDocuments();
      documentList = query.documents;
      print('Size Of New Backend List is ' + documentList.length.toString());
      KtList<NewsAndBlogs> newsAndBlogs = query.documents
          .map((doc) => NewsAndBlogsModel.fromFirestore(doc).toDomain())
          .toImmutableList();

      return Right(newsAndBlogs);
    } on PlatformException catch (e) {
      return left(NewsAndBlogsFailure.unexpected());
    }
  }

  @override
  Future<Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>>
      getMoreNewsAndBlogs() async {
    try {
      final internetStatus = await isConnected();

      if (!internetStatus) {
        return left(NewsAndBlogsFailure.noInternet());
      }
      final newsAndBlogsCollection = _firestore.collection('newsandblogs');
      QuerySnapshot query = await newsAndBlogsCollection
          .orderBy("rank")
          .startAfterDocument(documentList[documentList.length - 1])
          .limit(7)
          .getDocuments();
      List<DocumentSnapshot> newDocumentList = query.documents;
      documentList.addAll(newDocumentList);
      print('Size Of New Backend List is ' + documentList.length.toString());
      KtList<NewsAndBlogs> newsAndBlogs = query.documents
          .map((doc) => NewsAndBlogsModel.fromFirestore(doc).toDomain())
          .toImmutableList();

      return Right(newsAndBlogs);
    } on PlatformException catch (e) {
      return left(NewsAndBlogsFailure.unexpected());
    }
  }
}
