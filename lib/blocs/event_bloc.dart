import 'dart:async';

import 'package:social_network_app/models/event.dart';

class EventBloC {
  late Event _event;
  StreamController<Event> eventController = StreamController<Event>();
  StreamController<List<Event>> listEventController =
      StreamController<List<Event>>();

  List<Event> getlist() {
    listEventController.sink.add(events);
    return events;
  }

  Event? getEvent(int id) {
    for (int i = 0; i < events.length; i++) {
      if (events[i].id == id) {
        eventController.sink.add(events[i]);
        return events[i];
      }
    }
    return null;
  }

  void increaseLike(int id) {
    for (int i = 0; i < events.length; i++) {
      if (events[i].id == id) {
        if (events[i].isLike == false) {
          events[i].isLike = true;
        } else {
          events[i].isLike = false;
        }
        eventController.sink.add(events[i]);
      }
    }
  }
}
