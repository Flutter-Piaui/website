

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_piaui_website/app/modules/events/data/stores/event_store.dart';
import 'package:flutter_piaui_website/app/modules/photos/data/stores/photo_store.dart';
import '../events/data/datasources/event_datasource.dart';
import '../events/data/repositories/api_event_repository.dart';
import '../events/domain/usecases/fetch_events_usecases.dart';
import '../photos/data/data_sources/photo_data_source.dart';
import '../photos/data/repositories/api_photo_repository.dart';
import '../photos/domain/usecases/get_photos_usecases.dart';
import 'home_store.dart';

import 'home_page.dart';

class HomeModule extends Module {
  List<Module> get imports => [];

  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
    Bind((i) => JsonEventDatasource(), isLazy: false),
    Bind((i) => ApiEventRepository(i()), isLazy: false),
    Bind((i) => FetchEvents(i()), isLazy: false),
    Bind((i) => EventStore(i()), isLazy: false),
    Bind((i) => JsonPhotoDataSource(), isLazy: false),
    Bind((i) => ApiPhotoRepository(i()), isLazy: false),
    Bind((i) => GetPhotos(i()), isLazy: false),
    Bind((i) => PhotosStore(i()), isLazy: false),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const HomePage()),
  ];
}
