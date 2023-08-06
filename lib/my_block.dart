// import 'dart:async';

// class MyBlock {
//   //push the data backend to the ui
//   final StreamController<Mystate> _stateStreamController =
//       StreamController<Mystate>();

//   StreamSink get _stateStreamSink => _stateStreamController.sink;
//   Stream<Mystate> get stateStream => _stateStreamController.stream;

//   //get the data from ui to backend
//   final StreamController<Event> _eventStreamController =
//       StreamController<Event>();

//   StreamSink get eventStreamSink => _eventStreamController.sink;
//   Stream<Event> get _eventStream => _eventStreamController.stream;

//   MyBlock() {
//     _eventStream.listen((event) {
//       print(event);
//       businesslogic(event);
//     });
//   }

//   void businesslogic(Event event) {
//     int? value;

//     if (event is IncrementEvent) {
//       value = event.value;
//       value++;
//       _stateStreamSink.add(IncrementState(value: value));
//     } else if (event is DecrementEvent) {
//       value = event.value;
//       value--;
//       _stateStreamSink.add(DecrementState(value: value));
//     }
//   }
// }

// abstract class Event {}

// class IncrementEvent extends Event {
//   int value;
//   IncrementEvent({required this.value});
// }

// class DecrementEvent extends Event {
//   int value;
//   DecrementEvent({required this.value});
// }

// abstract class Mystate {}

// class IncrementState extends Mystate {
//   int value;
//   IncrementState({required this.value});
// }

// class DecrementState extends Mystate {
//   int value;
//   DecrementState({required this.value});
// }
