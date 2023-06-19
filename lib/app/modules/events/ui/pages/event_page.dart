import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../data/datasources/event_datasource.dart';

import '../../domain/entities/event_entity.dart';
import 'package:flutter_piaui_website/design_system/theme/website_images.dart';

import '../../../../../design_system/components/carousel.dart';
import '../../../../../design_system/components/custom_card.dart';
import '../../../../../design_system/texts/texts.dart';
import '../../../../../design_system/texts/texts.dart';
import '../../data/stores/event_store.dart';
import 'dart:html' as html;

class EventPage extends StatefulWidget {
  final EventStore store;
  const EventPage({Key? key, required this.store}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  EventStore get store => widget.store;
  @override
  void initState() {
    super.initState();
    test();
  }

  test() async {
    await store.fetchEvents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text(
            'Eventos',
            style: TextAppDefault().titleCard,
            textAlign: TextAlign.left,
          ),
          Observer(
              name: 'observerListEvents',
              builder: (_) {
                return store.listEvent.length > 0
                    ? Expanded(
                        child: ListView(
                          children: <Widget>[
                            GridView.count(
                              crossAxisCount: 3,
                              physics:
                                  NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                              shrinkWrap:
                                  true, // You won't see infinite size error
                              children: <Widget>[
                                for (var i in store.listEvent)
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 20, bottom: 20),
                                    child: CustomCard(
                                      cardType: CardType.event,
                                      image: i.photoUrl,
                                      titleCard: i.title,
                                      data: i.date,
                                      onPressed: () async {
                                        html.window.open(i.linkUrl, i.title);
                                      },
                                    ),
                                  ),
                              ],
                            ),
                            // ...... other list children.
                          ],
                        ),
                      )
                    : const Center(
                        child: CircularProgressIndicator(),
                      );
              }),
        ]),
      ),
    );
  }
}
