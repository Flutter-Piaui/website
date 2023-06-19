// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EventStore on EventStoreBase, Store {
  late final _$listEventAtom =
      Atom(name: 'EventStoreBase.listEvent', context: context);

  @override
  List<EventEntity> get listEvent {
    _$listEventAtom.reportRead();
    return super.listEvent;
  }

  @override
  set listEvent(List<EventEntity> value) {
    _$listEventAtom.reportWrite(value, super.listEvent, () {
      super.listEvent = value;
    });
  }

  late final _$counterAtom =
      Atom(name: 'EventStoreBase.counter', context: context);

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$fetchEventsAsyncAction =
      AsyncAction('EventStoreBase.fetchEvents', context: context);

  @override
  Future fetchEvents() {
    return _$fetchEventsAsyncAction.run(() => super.fetchEvents());
  }

  @override
  String toString() {
    return '''
listEvent: ${listEvent},
counter: ${counter}
    ''';
  }
}
