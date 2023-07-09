import 'dart:js';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_piaui_website/app/modules/events/event_module.dart';
import 'package:flutter_piaui_website/app/modules/photos/photos_module.dart';
import 'home_store.dart';

import 'home_page.dart';

class HomeModule extends Module {
  List<Module> get imports => [];

  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => HomePage(
        homeStore: context.read(),
      ),
    ),
  ];
}
