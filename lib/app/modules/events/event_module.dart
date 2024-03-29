import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'data/stores/event_store.dart';
import 'domain/usecases/fetch_events_usecases.dart';
import 'data/repositories/api_event_repository.dart';
import 'data/datasources/event_datasource.dart';

import 'ui/pages/event_page.dart';

class WidgetEventModule extends WidgetModule {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => JsonEventDatasource()),
        Bind.factory((i) => ApiEventRepository(i())),
        Bind.factory((i) => FetchEvents(i())),
        Bind.lazySingleton((i) => EventStore(i())),
      ];

  @override
  List<ModularRoute> get routes => [];

  @override
  Widget get view => EventPage();
}
