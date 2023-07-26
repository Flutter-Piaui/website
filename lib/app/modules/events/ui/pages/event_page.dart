import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../design_system/components/custom_card.dart';
import '../../../../../design_system/texts/texts.dart';
import '../../data/stores/event_store.dart';
import 'dart:html' as html;

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  late final EventStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<EventStore>();
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
              'Eventos',
              style: TextAppDefault().titleCard,
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
              child: Observer(
                  name: 'observerListEvents',
                  builder: (_) {
                    return ScrollConfiguration(
                      behavior: ScrollConfiguration.of(context).copyWith(
                          dragDevices: {
                            PointerDeviceKind.mouse,
                            PointerDeviceKind.touch
                          }),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: store.listEvent.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.only(left: 20, bottom: 20),
                              child: CustomCard(
                                cardType: CardType.event,
                                image: Image.network(
                                  store.listEvent[index].photoUrl,
                                ),
                                titleCard: store.listEvent[index].title,
                                data: store.listEvent[index].date,
                                onPressed: () async {
                                  html.window.open(
                                      store.listEvent[index].linkUrl,
                                      store.listEvent[index].title);
                                },
                              ),
                            );
                          }),
                    );
                  })),
        ]),
      ),
    );
  }
}


// Container(
//                             margin: EdgeInsets.only(left: 20, bottom: 20),
//                             child: CustomCard(
//                               cardType: CardType.event,
//                               image: Image.network(
//                                 i.photoUrl,
//                               ),
//                               titleCard: i.title,
//                               data: i.date,
//                               onPressed: () async {
//                                 html.window.open(i.linkUrl, i.title);
//                               },
//                             ),
//                           ),