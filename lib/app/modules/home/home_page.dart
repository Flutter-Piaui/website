import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_piaui_website/app/modules/contact/contact_page.dart';
import 'package:flutter_piaui_website/app/modules/events/data/stores/event_store.dart';
import 'package:flutter_piaui_website/app/modules/events/ui/pages/event_page.dart';
import 'package:flutter_piaui_website/app/modules/photos/data/stores/photo_store.dart';
import 'package:flutter_piaui_website/app/modules/photos/ui/page/photos_page.dart';
import 'package:flutter_piaui_website/design_system/colors/custom_colors.dart';
import 'package:flutter_piaui_website/design_system/components/about/about.dart';
import 'package:flutter_piaui_website/design_system/components/custom_card.dart';
import 'package:flutter_piaui_website/design_system/components/menu/menu.dart';
import 'package:flutter_piaui_website/design_system/theme/website_images.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeStore homeStore;
  late final PhotosStore photosStore;
  late final EventStore eventStore;

  @override
  void initState() {
    super.initState();
    homeStore = Modular.get<HomeStore>();
    photosStore = Modular.get<PhotosStore>();
    eventStore = Modular.get<EventStore>();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 900;

      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: isMobile
              ? Menu(
                  buttonAbout: () {},
                  buttonContacts: () {},
                  buttonEvents: () {},
                  buttonInitial: () {},
                  buttonPhotos: () {},
                )
              : SizedBox.shrink(),
          title: !isMobile
              ? Menu(
                  buttonAbout: () {},
                  buttonContacts: () {},
                  buttonEvents: () {},
                  buttonInitial: () {},
                  buttonPhotos: () {},
                )
              : SizedBox.shrink(),
        ),
        body: PageView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              child: Column(
                children: [
                  const SizedBox(height: 200),
                  const Text(
                    'FALTA TELA HOME',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              color: context.color.black25,
              child: const About(),
            ),
            const PhotosPage(),
            Container(
              color: context.color.black25,
              child: const EventPage(),
            ),
            const ContactPage(),
          ],
        ),
      );
    });
  }
}
