import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  print('Start');
  getData();
  print('Done');
}

void getData() async {
  final collection =
      await FirebaseFirestore.instance.collection('DataBG').get();

  List maxPYCompare = [
    [2, 3, 4],
    [5, 6, 7],
    [8, 9, 10, 12, 13, 75]
  ];
  List playPRCompare = [
    [10, 15],
    [20, 25, 30, 35],
    [40, 42, 45, 50, 60],
    [80, 90, 120]
  ];

  String passType = 'Family';
  int passNum1 = 1;
  int passNum2 = 1;
  var i;
  var j;

  for (var element in collection.docs) {
    if (element['typeBoardGame'] == passType) {
      for (i in playPRCompare[passNum1]) {
        if (element['playTimePerRound'] == i) {
          for (j in maxPYCompare[passNum2]) {
            if (element['maximumNumberOfPlayers'] == j) {
              print(element['nameBoardGame'] +
                  '-->\n' +
                  element['howToPlayLink'] +
                  '-->\n' +
                  element['maximumNumberOfPlayers'].toString() +
                  '-->\n' +
                  element['boardgameimages'] +
                  '-->\n' +
                  element['playTimePerRound'].toString() +
                  '-->\n' +
                  element['typeBoardGame'] +
                  '-->\n' +
                  element['youtubeLink']);
              print(
                  '------------------------------------------------------------');
            }
          }
        }
      }
    }
  }
}
//   var usersDataFromJson = parsedJson['data'];
// List<String> userData = List<String>.from(usersDataFromJson);

//ดึงข้อมูลทั้งหมด
// String nameBG = element['nameBoardGame'];
// String linkBG = element['howToPlayLink'];
// String maxPYBG = element['maximumNumberOfPlayers'];
// String imageBG = element['boardgameimages'];
// String timeBG = element['playTimePerRound'];
// String typeBG = element['typeBoardGame'];
// String youtubeBG = element['youtubeLink'];

// print('------------------------------------------------------------');
// print(element.data()); // print ข้อมูลทุกตัวใน collection

// print("___________________________________________________");
// var element = collection.docs[Random().nextInt(collection.size)];
// print(
//     "Random data is here : ${element.data()}"); // random print ข้อมูลใน collection
