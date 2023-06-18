import 'package:mobx/mobx.dart';

part 'event_store.g.dart';

class EventStore = EventStoreBase with _$EventStore;

abstract class EventStoreBase with Store {
  @observable
  int counter = 0;

  Future<void> increment() async {
    counter = counter + 1;
  }
}
