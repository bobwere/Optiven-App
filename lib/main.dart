import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:optiven/common/config/bloc_observer.dart';

import 'app.dart';
import 'common/utils/class_builder.dart';
import 'injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ClassBuilder.registerClasses();

  configureInjection();
  BlocSupervisor.delegate = SimpleBlocObserver();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  return runApp(App());
}
