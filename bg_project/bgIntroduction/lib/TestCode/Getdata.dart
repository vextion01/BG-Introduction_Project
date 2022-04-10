import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class GetDATA {
   //String a;
  static getData() async {
    final collection = await FirebaseFirestore.instance.collection('DataBG').get();
    var element = collection.docs[Random().nextInt(collection.size)];


    
    String nameBGs = element['nameBoardGame'];
    final String nameBg = await nameBGs;
    print("Random data is here : ${element.data()}");
    print('------------------------------------------------------------');
    var a = element['boardgameimages'];
    print(a);
    // print('------------------------------------------------------------');
    // print(element['boardgameimages']);
    // print('------------------------------------------------------------');
    // print(element['howToPlayLink']);
    // print('------------------------------------------------------------');
    // print(element['maximumNumberOfPlayers']);
    // print('------------------------------------------------------------');
    // print(element['nameBoardGame']);
    // print('------------------------------------------------------------');
    // print(element['numberOfBoardGames']);
    // print('------------------------------------------------------------');
    // print(element['playTimePerRound']);
    // print('------------------------------------------------------------');
    // print(element['typeBoardGame']);
    // print('------------------------------------------------------------');
    // print(element['youtubeLink']);

    //String nameBG = element['nameBoardGame'];
    // String linkBG = element['howToPlayLink'];
    // String maxPYBG = element['maximumNumberOfPlayers'];
    // String imageBG = element['boardgameimages'];
    // String timeBG = element['playTimePerRound'];
    // String typeBG = element['typeBoardGame'];
    // String youtubeBG = element['youtubeLink'];
  }
}
