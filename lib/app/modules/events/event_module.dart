import 'package:flutter_modular/flutter_modular.dart';
import 'data/stores/event/event_store.dart';

import 'ui/pages/event_page.dart';

class EventModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => EventStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const EventPage()),
  ];
}
