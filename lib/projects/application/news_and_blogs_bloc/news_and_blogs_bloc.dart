import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:optiven/projects/domain/interfaces/i_project_facade.dart';

import '../../../common/failures/news_and_blogs_failure.dart';
import '../../domain/entities/news_and_blogs_entity.dart';
import '../../domain/interfaces/i_news_and_blogs_facade.dart';

part 'news_and_blogs_bloc.freezed.dart';
part 'news_and_blogs_event.dart';
part 'news_and_blogs_state.dart';

@injectable
class NewsAndBlogsBloc extends Bloc<NewsAndBlogsEvent, NewsAndBlogsState> {
  final INewsAndBlogsFacade _newsAndBlogsFacade;

  NewsAndBlogsBloc(this._newsAndBlogsFacade);

  StreamSubscription<Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>>
      _newsAndBlogsStreamSubscription;

 

  @override
  Stream<NewsAndBlogsState> mapEventToState(
    NewsAndBlogsEvent event,
  ) async* {
    yield* event.map(
      getFirstNewsAndBlogs: (e) async* {
        yield const NewsAndBlogsState.loadingData();

        final failureOrNewsAndBlogs =
            await _newsAndBlogsFacade.getFirstNewsAndBlogs();

        add(NewsAndBlogsEvent.newsAndBlogsReceived(failureOrNewsAndBlogs));
      },
      getMoreNewsAndBlogs: (e) async* {
        final failureOrNewsAndBlogs =
            await _newsAndBlogsFacade.getMoreNewsAndBlogs();

        add(NewsAndBlogsEvent.newsAndBlogsReceived(failureOrNewsAndBlogs));
      },
      getAllNewsAndBlogs: (e) async* {
        yield const NewsAndBlogsState.loadingData();
        await _newsAndBlogsStreamSubscription?.cancel();
        _newsAndBlogsStreamSubscription = _newsAndBlogsFacade
            .getAllNewsAndBlogs()
            .listen((newsAndBlogs) =>
                add(NewsAndBlogsEvent.newsAndBlogsReceived(newsAndBlogs)));
      },
      newsAndBlogsReceived: (e) async* {
        yield e.failureOrNewsAndBlogs
            .fold((f) => NewsAndBlogsState.loadFailure(f), (newsAndBlogs) {
          
          return NewsAndBlogsState.loadSuccess(newsAndBlogs);
        });
      },
    );
  }

  @override
  Future<void> close() async {
    await _newsAndBlogsStreamSubscription.cancel();
    return super.close();
  }

  @override
  NewsAndBlogsState get initialState => NewsAndBlogsState.initial();
}
