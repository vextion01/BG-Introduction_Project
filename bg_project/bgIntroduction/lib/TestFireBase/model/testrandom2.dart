import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';
import 'package:flutter/material.dart';


void  main(List<String> args) {
  getData();
}

void getData() async {
    final collection = await FirebaseFirestore.instance.collection('DataBG').get();
    for (var element in collection.docs) {
      print(element.data()); // print ข้อมูลทุกตัวใน collection
    }
    print("_______________________________________________________");
    var element = collection.docs[Random().nextInt(collection.size)];
    print("Random data is here : ${element.data()}"); // random print ข้อมูลใน collection
}