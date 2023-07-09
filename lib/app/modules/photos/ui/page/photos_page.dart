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
  late final PhotosStore photosStore;

  @override
  void initState() {
    super.initState();
    photosStore = Modular.get<PhotosStore>();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        GridView.count(
          crossAxisCount: 3,
          physics:
              NeverScrollableScrollPhysics(), // to disable GridView's scrolling
          shrinkWrap: true, // You won't see infinite size error
          children: <Widget>[
            for (var i in photosStore.listphotos)
              Container(
                margin: EdgeInsets.only(left: 20),
                child: CustomCard(
                  cardType: CardType.event,
                  image: Image.network(
                    i.photoUrl,
                  ),
                ),
              ),
          ],
        ),
        // ...... other list children.
      ],
    );
  }
}
