import 'dart:async';

import 'package:social_network_app/models/event.dart';

class EventDetailBloC {
  final StreamController<Event> _eventController = StreamController<Event>();
  Stream<Event> get eventStream => _eventController.stream;
  Event? increaseLike(int id) {
    for (int i = 0; i < events.length; i++) {
      if (events[i].id == id) {
        if (events[i].isLike == true) {
          events[i].isLike = false;
        } else {
          events[i].isLike = true;
        }
        _eventController.sink.add(events[i]);
        return events[i];
      }
    }
    return null;
  }

  Event? getEvent(int id) {
    for (int i = 0; i < events.length; i++) {
      if (events[i].id == id) {
        _eventController.sink.add(events[i]);
        return events[i];
      }
    }
    return null;
  }

  void dispose() {
    _eventController.close();
  }
}
