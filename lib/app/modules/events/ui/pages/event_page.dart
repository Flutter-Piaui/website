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
  late final EventStore eventStore;

  @override
  void initState() {
    super.initState();
    eventStore = Modular.get<EventStore>();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      SizedBox(
        width: size.width * .9,
        child: Text(
          'Eventos',
          style: TextAppDefault().titleCard,
          textAlign: TextAlign.left,
        ),
      ),
      Observer(
          name: 'observerListEvents',
          builder: (_) {
            return eventStore.listEvent.length > 0
                ? SizedBox(
                    width: size.width,
                    height: 450,
                    child: PageView(
                      padEnds: false,
                      controller: PageController(
                        viewportFraction: 0.2,
                      ),
                      children: [
                        for (var i in eventStore.listEvent)
                          Container(
                            margin: EdgeInsets.only(left: 20, bottom: 20),
                            child: CustomCard(
                              cardType: CardType.event,
                              image: Image.network(
                                i.photoUrl,
                              ),
                              titleCard: i.title,
                              data: i.date,
                              onPressed: () async {
                                html.window.open(i.linkUrl, i.title);
                              },
                            ),
                          ),
                      ],
                    ),
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  );
          }),
    ]);
  }
}
