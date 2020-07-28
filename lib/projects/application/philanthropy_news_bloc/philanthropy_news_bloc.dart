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

part 'philanthropy_news_bloc.freezed.dart';
part 'philanthropy_news_event.dart';
part 'philanthropy_news_state.dart';

@injectable
class PhilanthropyNewsBloc
    extends Bloc<PhilanthropyNewsEvent, PhilanthropyNewsState> {
  final IProjectFacade _newsAndBlogsFacade;

  PhilanthropyNewsBloc(this._newsAndBlogsFacade);

  StreamSubscription<Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>>
      _newsAndBlogsStreamSubscription;

  @override
  Stream<PhilanthropyNewsState> mapEventToState(
    PhilanthropyNewsEvent event,
  ) async* {
    yield* event.map(
      getAllPhilanthropyNews: (e) async* {
        yield const PhilanthropyNewsState.loadingData();
        await _newsAndBlogsStreamSubscription?.cancel();
        _newsAndBlogsStreamSubscription = _newsAndBlogsFacade
            .getAllPhilanthropyNews()
            .listen((newsAndBlogs) => add(
                PhilanthropyNewsEvent.philanthropyNewsReceived(newsAndBlogs)));
      },
      philanthropyNewsReceived: (e) async* {
        yield e.failureOrNewsAndBlogs.fold(
          (f) => PhilanthropyNewsState.loadFailure(f),
          (newsAndBlogs) => PhilanthropyNewsState.loadSuccess(newsAndBlogs),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _newsAndBlogsStreamSubscription.cancel();
    return super.close();
  }

  @override
  PhilanthropyNewsState get initialState => PhilanthropyNewsState.initial();
}
