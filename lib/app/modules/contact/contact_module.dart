import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_piaui_website/app/modules/contact/contact_page.dart';

class ContactModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const ContactPage(),
        ),
      ];
}
