import 'dart:convert';

import 'package:flutter/services.dart';

import '../../domain/entities/event_entity.dart';

///[EventDatasource] interface
abstract class EventDatasource {
  ///Method used to sign-in as an anonymous user
  Future<List<EventEntity>> fetchEvents();
}

///Event's implementation of [EventDatasource]
class JsonEventDatasource {
  ///Base constructor of [EventDatasource]
  @override
  Future<List<EventEntity>> fetchEvents() async {
    final String response =
        await rootBundle.loadString('data/eventos_flutter_piaui.json');

    final data = await json.decode(response);

    List<EventEntity> listEvent = [];

    for (var item in data) {
      listEvent.add(EventEntity.fromMap(item));
    }

    return listEvent;
    // return list;
  }
}
