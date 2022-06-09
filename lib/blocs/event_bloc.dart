import 'dart:async';

import 'package:social_network_app/models/event.dart';

// Mỗi bloc chỉ dùng cho 1 màn hình
class EventBloC {
  // late Event _event;
  // StreamController<Event> eventController = StreamController<Event>();
  final StreamController<List<Event>> _listEventController =
      StreamController<List<Event>>();

  Stream<List<Event>> get listEventStream => _listEventController.stream;

  List<Event> getlist() {
    _listEventController.sink.add(events);
    return events;
  }

  void dispose() {
    _listEventController.close();
  }
}
