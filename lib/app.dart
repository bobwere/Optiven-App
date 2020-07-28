import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:optiven/projects/application/featured_project_bloc/featured_project_bloc.dart';

import 'common/constants/strings.dart';
import 'common/constants/theme.dart';
import 'common/routes/router.dart';
import 'injection_container.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeaturedProjectBloc>(
            create: (context) => sl<FeaturedProjectBloc>()
              ..add(const FeaturedProjectEvent.getAllFeaturedProjects())),
      ],
      child: GetMaterialApp(
        title: nameOfApp,
        theme: fyndaaTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        getPages: Routes.routes,
      ),
    );
  }
}
