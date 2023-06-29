import '../repositories/event_repository.dart';

import '../entities/event_entity.dart';

abstract class FetchEventsUsecase {
  Future<List<EventEntity>> call();
}

class FetchEvents implements FetchEventsUsecase {
  final EventRepository _repository;

  const FetchEvents(this._repository);

  Future<List<EventEntity>> call() {
    return _repository.fetchEvents();
  }
}
