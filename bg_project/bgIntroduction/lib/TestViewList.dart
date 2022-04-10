// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:adobe_xd/pinned.dart';
// import 'package:adobe_xd/page_link.dart';
// import './mian_screen.dart';
// import './save_data_screen.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'dart:math';


// class TestViewList extends StatefulWidget {
//   const TestViewList({ Key? key }) : super(key: key);

//   @override
//   State<TestViewList> createState() => _TestViewListState();
// }

// class _TestViewListState extends State<TestViewList> {

//   void getData() async {
//   final collection =
//       await FirebaseFirestore.instance.collection('DataBG').get();

//   List maxPYCompare = [
//     [2, 3, 4],
//     [5, 6, 7],
//     [8, 9, 10, 12, 13, 75]
//   ];
//   List playPRCompare = [
//     [10, 15],
//     [20, 25, 30, 35],
//     [40, 42, 45, 50, 60],
//     [80, 90, 120]
//   ];

//   String passType = 'Family';
//   int passNum1 = 1;
//   int passNum2 = 1;
//   var i;
//   var j;

//   for (var element in collection.docs) {
//     if (element['typeBoardGame'] == passType) {
//       for (i in playPRCompare[passNum1]) {
//         if (element['playTimePerRound'] == i) {
//           for (j in maxPYCompare[passNum2]) {
//             if (element['maximumNumberOfPlayers'] == j) {
//               print(element['nameBoardGame'] +
//                   '-->\n' +
//                   element['howToPlayLink'] +
//                   '-->\n' +
//                   element['maximumNumberOfPlayers'].toString() +
//                   '-->\n' +
//                   element['boardgameimages'] +
//                   '-->\n' +
//                   element['playTimePerRound'].toString() +
//                   '-->\n' +
//                   element['typeBoardGame'] +
//                   '-->\n' +
//                   element['youtubeLink']);
//               print(
//                   '------------------------------------------------------------');
//             }
//           }
//         }
//       }
//     }
//   }
// }
//   @override
//   Widget build(BuildContext context) {
//     return ListView(children: (
                 
//                   final String nameBG = data['nameBoardGame'];
//                   final String image = data['boardgameimages'];
//                   final String name = data['typeBoardGame'];

//                   return ListTile(
//                     onTap: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => Resultinfo(
//                                     data: data,
//                                   )));
//                     },
//                     title: Text(nameBG),
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(image),
//                     ),
//                     subtitle: Text(name),
//                   );
//             )

//   );
              
// }
// }
