//
// import 'dart:async';
// import 'dart:convert';
//
// import 'package:get/get.dart';
// import 'package:stomp_dart_client/stomp.dart';
// import 'package:stomp_dart_client/stomp_config.dart';
// import 'package:stomp_dart_client/stomp_frame.dart';
//
// class StompService extends GetxService{
//   void onConnect(StompFrame frame) {
//     stompClient.subscribe(
//       destination: '/sub/chat/rooms/1',
//       callback: (frame) {
//         Map<String, dynamic> result = json.decode(frame.body!);
//         print(result);
//       },
//     );
//
//     stompClient.send(
//       destination: '/pub/chat/message',
//       body: json.encode({
//         "chat_room_id": 1,
//         "sender": "tester",
//         "content": "hello",
//         "message_type": "ENTER"
//       },),
//     );
//
//
//     Timer.periodic(const Duration(seconds: 10), (_) {
//       stompClient.send(
//         destination: '/pub/chat/message',
//         body: json.encode({
//           "chat_room_id": 1,
//           "sender": "tester",
//           "content": "hello",
//           "message_type": "TALK"
//         },),
//       );
//     });
//   }
//
//   final stompClient = StompClient(
//     config: StompConfig(
//       url: 'ws://192.168.1.8:8080/ws/chat',
//       onConnect: onConnect,
//       beforeConnect: () async {
//         print('waiting to connect...');
//         print('connecting...');
//       },
//       onWebSocketError: (dynamic error) => print(error.toString()),
//       stompConnectHeaders: {'Authorization': 'Bearer yourToken'},
//       webSocketConnectHeaders: {'Authorization': 'Bearer yourToken'},
//     ),
//   );
// }