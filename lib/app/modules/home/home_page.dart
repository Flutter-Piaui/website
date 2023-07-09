import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_piaui_website/app/modules/contact/contact_page.dart';
import 'package:flutter_piaui_website/app/modules/events/data/stores/event_store.dart';
import 'package:flutter_piaui_website/app/modules/events/ui/pages/event_page.dart';
import 'package:flutter_piaui_website/app/modules/photos/data/stores/photo_store.dart';
import 'package:flutter_piaui_website/app/modules/photos/ui/page/photos_page.dart';
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
  // late final EventStore eventStore;

  @override
  void initState() {
    super.initState();
    homeStore = Modular.get<HomeStore>();
    photosStore = Modular.get<PhotosStore>();
    // eventStore = Modular.get<EventStore>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Menu(
                buttonInitial: () {},
                buttonAbout: () {},
                buttonPhotos: () {},
                buttonEvents: () {},
                buttonContacts: () {}),
            PhotosPage(store: photosStore)
            // PageView(
            //   children: [
            //     PhotosPage(store: photosStore),
            //     EventPage(store: eventStore),
            //     const ContactPage(),
            //   ],
            // )
          ],
        ),
      ),
    );
    // return Scaffold(
    //   body: Center(
    //       child: Column(children: [
    //     SizedBox(
    //       width: 200,
    //       height: 200,
    //       child: PageView.builder(
    //         scrollDirection: Axis.horizontal,
    //         itemCount: WebsiteImages().imageList.length,
    //         itemBuilder: (ctx, index) {
    //           return CustomCard(
    //               cardType: CardType.photo,
    //               image: Image.asset(
    //                 WebsiteImages().imageList[index],
    //               ));
    //         },
    //       ),
    //     ),
    //   ])),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () {
    //       Modular.to.navigate('/events/');
    //     },
    //     child: const Icon(Icons.add),
    //   ),
    // );
  }
}
