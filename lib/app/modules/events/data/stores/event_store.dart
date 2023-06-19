import '../../domain/usecases/fetch_events_usecases.dart';
import '../../domain/entities/event_entity.dart';
import 'package:mobx/mobx.dart';
// Include generated file
part 'event_store.g.dart';

class EventStore = EventStoreBase with _$EventStore;

abstract class EventStoreBase with Store {
  final FetchEventsUsecase _fetchEventsUsecase;
  @observable
  List<EventEntity> listEvent = [];

  EventStoreBase(this._fetchEventsUsecase);

  @observable
  int counter = 0;
  @action
  fetchEvents() async {
    print(listEvent.length);
    listEvent = await _fetchEventsUsecase.call();
    print(listEvent.length);
  }
}
