import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:optiven/projects/domain/interfaces/i_project_facade.dart';

import '../../../common/failures/newsletter_failure.dart';
import '../../domain/entities/newsletter_entity.dart';
import '../../domain/interfaces/i_newsletter_facade.dart';

part 'newsletter_bloc.freezed.dart';
part 'newsletter_event.dart';
part 'newsletter_state.dart';

@injectable
class NewsletterBloc extends Bloc<NewsletterEvent, NewsletterState> {
  final IProjectFacade _newsletterFacade;

  NewsletterBloc(this._newsletterFacade);

  StreamSubscription<Either<NewsletterFailure, KtList<Newsletter>>>
      _newsletterStreamSubscription;

  @override
  Stream<NewsletterState> mapEventToState(
    NewsletterEvent event,
  ) async* {
    yield* event.map(
      getAllNewsletters: (e) async* {
        yield const NewsletterState.loadingData();
        await _newsletterStreamSubscription?.cancel();
        _newsletterStreamSubscription = _newsletterFacade
            .getAllNewsletters()
            .listen((newsletters) =>
                add(NewsletterEvent.newslettersReceived(newsletters)));
      },
      newslettersReceived: (e) async* {
        yield e.failureOrNewsletters.fold(
          (f) => NewsletterState.loadFailure(f),
          (newsletters) => NewsletterState.loadSuccess(newsletters),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _newsletterStreamSubscription.cancel();
    return super.close();
  }

  @override
  NewsletterState get initialState => NewsletterState.initial();
}
