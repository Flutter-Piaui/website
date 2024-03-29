import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_piaui_website/app/modules/contact/contact_module.dart';
import 'package:flutter_piaui_website/app/modules/photos/photos_module.dart';

import 'modules/home/home_module.dart';
import 'modules/events/event_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ModuleRoute('/contacts', module: ContactModule()),
      ];
}
