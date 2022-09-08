// import 'dart:convert';
//
// import 'package:flutter/material.dart';
//
// import '../services/socket_service.dart';
//
// class MainPage extends StatefulWidget {
//   const MainPage({Key? key}) : super(key: key);
//
//   @override
//   State<MainPage> createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//
//   @override
//   void initState() {
//     super.initState();
//     SocketService.connectSocketChannel();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Socket"),
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(20),
//         child: StreamBuilder(
//           stream: SocketService.channel.stream,
//           builder: (context, snapshot) {
//             OrderBookModel? model;
//             if(snapshot.hasData && snapshot.data != '{"message":"Welcome!"}') {
//               debugPrint(snapshot.data.toString());
//               model = orderBookModelFromJson(snapshot.data as String);
//
//               return Center(
//                 child: Text(
//                   snapshot.hasData ? "${model.data!.bids}" : 'No data',
//                   style: const TextStyle(fontSize: 22),
//                 ),
//               );
//             }
//
//             return Center(
//               child: Text(
//                 snapshot.hasData ? "${snapshot.data}" : 'No data',
//                 style: const TextStyle(fontSize: 22),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }