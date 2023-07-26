import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_piaui_website/design_system/theme/website_images.dart';
import '../../../../../design_system/components/carousel.dart';
import '../../../../../design_system/components/custom_card.dart';
import '../../../../../design_system/texts/texts.dart';

import '../../data/stores/photo_store.dart';

class PhotosPage extends StatefulWidget {
  const PhotosPage({Key? key}) : super(key: key);

  @override
  State<PhotosPage> createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
  late final PhotosStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<PhotosStore>();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            width: size.width * .9,
            child: Text(
              'Fotos',
              style: TextAppDefault().titleCard,
              textAlign: TextAlign.left,
            ),
          ),
          Observer(
              name: 'observerListEvents',
              builder: (_) {
                return Expanded(
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context).copyWith(
                        dragDevices: {
                          PointerDeviceKind.mouse,
                          PointerDeviceKind.touch
                        }),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: store.listphotos.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: CustomCard(
                              cardType: CardType.photo,
                              image: Image.network(
                                store.listphotos[index].photoUrl,
                              ),
                            ),
                          );
                        }),
                  ),
                );
              }),
        ]),
      ),
    );
  }
}
