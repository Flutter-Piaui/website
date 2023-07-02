import '../../domain/entities/event_entity.dart';
import '../../domain/repositories/event_repository.dart';
import '../datasources/event_datasource.dart';

class ApiEventRepository implements EventRepository {
  final EventDatasource _datasource;

  const ApiEventRepository(this._datasource);

  @override
  Future<List<EventEntity>> fetchEvents() {
    return _datasource.fetchEvents();
  }
}
