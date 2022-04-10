import 'package:firebase_core/firebase_core.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';
import 'package:flutter/material.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBgNZ5HwqP8QIIYE4vylJaBi60t-oR1O94",
        authDomain: "bg-introduction-3aade.firebaseapp.com",
        databaseURL:
            "https://bg-introduction-3aade-default-rtdb.asia-southeast1.firebasedatabase.app",
        projectId: "bg-introduction-3aade",
        storageBucket: "bg-introduction-3aade.appspot.com",
        messagingSenderId: "593533535477",
        appId: "1:593533535477:web:c07a64b0a410954d84b1bc",
        measurementId: "G-70KQKL9Q8J"),
  );

  print('Start');
  getData();
  print('Done');
}

void getData() async {
  final collection =
      await FirebaseFirestore.instance.collection('DataBG').get();
  for (var element in collection.docs) {
    print(element.data()); // print ข้อมูลทุกตัวใน collection
  }
  print("___________________________________________________");
  var element = collection.docs[Random().nextInt(collection.size)];
  print(
      "Random data is here : ${element.data()}"); // random print ข้อมูลใน collection
}
