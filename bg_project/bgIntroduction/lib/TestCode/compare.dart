import 'package:firebase_core/firebase_core.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';
import 'package:flutter/material.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  getData();
}

void getData() async {
  final collection =
      await FirebaseFirestore.instance.collection('DataBG').get();
  List type = ['Party'];
  List time = ['15'];
  List player = ['8'];
  for (var element in collection.docs) {
    if (element['typeBoardGame'] == 'Party') {
      if (element['playTimePerRound'] == 15) {
        if (element['maximumNumberOfPlayers'] == 8) {
          print(element['nameBoardGame']);
          print(element['numberOfBoardGames']);
          print(element['howToPlayLink']);
          print("---------------------------------");
        }
      }
    }
  }
}
