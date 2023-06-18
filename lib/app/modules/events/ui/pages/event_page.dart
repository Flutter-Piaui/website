import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../data/datasources/event_datasource.dart';

import '../../domain/entities/event_entity.dart';
import 'package:flutter_piaui_website/design_system/theme/website_images.dart';

import '../../../../../design_system/components/carousel.dart';
import '../../../../../design_system/components/custom_card.dart';
import '../../../../../design_system/texts/texts.dart';
import '../../../../../design_system/texts/texts.dart';
import '../../data/stores/event/event_store.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  late final EventStore store;
  List<EventEntity>? listEvent;
  @override
  void initState() {
    super.initState();
    store = Modular.get<EventStore>();
    fetchListEvent();
  }

  fetchListEvent() async {
    listEvent = await JsonEventDatasource().fetchEvents();
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
          Expanded(
            child: ListView(
              children: <Widget>[
                GridView.count(
                  crossAxisCount: 3,
                  physics:
                      NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                  shrinkWrap: true, // You won't see infinite size error
                  children: <Widget>[
                    for (var i in WebsiteImages().imageList)
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: CustomCard(
                          cardType: CardType.event,
                          image: i,
                        ),
                      ),
                  ],
                ),
                // ...... other list children.
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
