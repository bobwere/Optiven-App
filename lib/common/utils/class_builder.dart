import '../../pages/favourites_page.dart';
import '../../pages/main_page.dart';
import '../../pages/media_page.dart';
import '../../pages/my_money_page.dart';
import '../../pages/projects_page.dart';
import '../../pages/about_us_page.dart';
import '../../pages/testimonials_page.dart';

typedef T Constructor<T>();

final Map<String, Constructor<Object>> _constructors =
    <String, Constructor<Object>>{};

void register<T>(Constructor<T> constructor) {
  _constructors[T.toString()] = constructor;
}

class ClassBuilder {
  static void registerClasses() {
    register<MainPage>(() => MainPage());
    register<ProjectsPage>(() => ProjectsPage());
    register<FavouritesPage>(() => FavouritesPage());
    register<TestimonialsPage>(() => TestimonialsPage());
    register<MediaPage>(() => MediaPage());
    register<MyMoneyPage>(() => MyMoneyPage());
    register<AboutUsPage>(() => AboutUsPage());
  }

  static dynamic fromString(String type) {
    return _constructors[type]();
  }
}
