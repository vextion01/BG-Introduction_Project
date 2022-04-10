// import 'dart:async';

// import 'package:firebase_core/firebase_core.dart';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'dart:math';
// import 'package:flutter/material.dart';

// Future<void> main(List<String> args) async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   getData();
//   int a = 0;
// }

// int a = 0;
// void getData() async {
//   final collection =
//       await FirebaseFirestore.instance.collection('DataBG').get();
//   a = collection.docs.length;

//   for(var i ; i < a; i++ )
//     for (var j = i+1; j < a; j++) {
//         if(collection.docs['playTimePerRound']) {}
//     }
// }


