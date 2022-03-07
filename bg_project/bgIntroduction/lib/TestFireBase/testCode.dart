import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';

class Randomtes {
  final CollectionReference _collectionRef =
      FirebaseFirestore.instance.collection('DataBG');
  Future<void> getData() async {
    var collection = FirebaseFirestore.instance.collection('DataBG');
    collection.snapshots().listen((querySnapshot) {
      for (var doc in querySnapshot.docs) {
        Map<String, dynamic> data = doc.data();
        final randomNumber = Random();
        var randomData = data[randomNumber]; // <-- Retrieving the value.
        print(randomData);
      }
    });
  }
  // Check for your document data here and break when you find it
}

  // final CollectionReference _collectionRef =
  //     FirebaseFirestore.instance.collection('DataBG');
  // Future<void> getData() async {
  //   var collection = FirebaseFirestore.instance.collection('DataBG');
  //   collection.snapshots().listen((querySnapshot) {
  //     for (var doc in querySnapshot.docs) {
  //       Map<String, dynamic> data = doc.data();
  //       var randomData = data[1]; // <-- Retrieving the value.
  //       print(randomData);
  //     }
  //   });
  // }
    // // Get docs from collection reference
    // QuerySnapshot querySnapshot = await _collectionRef.get();
    // // Get data from docs and convert map to List
    // final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
    // print(allData);
    // Future getDocs() async {
    //   QuerySnapshot querySnapshot =
    //       await FirebaseFirestore.instance.collection("DataBG").get();
    //   int countDocs = querySnapshot.data.docs.length;
    //   for (int i = 0; i < querySnapshot.documents.length; i++) {
    //     var a = snapshot.data.documents[i];
    //     print(a.documentID);
    //   
    

  // String collection = "DataBG";
  // final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Future<List> getAllDocs() async {
  //   _firestore.collection(collection).get().then((result) {
  //     for (DocumentSnapshot docss in result.docs) {
  //       allDoc.add(fromSnapshot(docss));
  //     }
  //     return allDoc;
  //   });
  //   return allDoc;
  // }

  // final random = Random();
  // var element = allDoc[random.nextInt(allDoc.length)];
  // print(element);

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// Future getDocs() async {
//   QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection("DataBG").getDocuments();
//   for (int i = 0; i < querySnapshot.documents.length; i++) {
//     var a = querySnapshot.documents[i];
//     print(a.documentID);
//   }
// }





//   randomFunction() {
//     var randomData;
//     final CollectionReference _collectionRef =
//         FirebaseFirestore.instance.collection('DataBG');
//     Future<void> getData() async {
//       var collection = FirebaseFirestore.instance.collection('DataBG');
//       collection.snapshots().listen((querySnapshot) {
//         for (var doc in querySnapshot.docs) {
//           Map<String, dynamic> data = doc.data();
//           final randomNumber = Random();
//           randomData = data[randomNumber]; // <-- Retrieving the value.

//         }
//       });
//     }
// //onPased `
//     return randomData;
//   }