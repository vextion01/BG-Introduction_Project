import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';
import 'package:flutter/material.dart';
// export  {StorageList} ;

class testRan {
  void countDocuments() async {
    List<String> storage = [];
    QuerySnapshot _myDoc =
        await FirebaseFirestore.instance.collection('product').get();
    List<DocumentSnapshot> _myDocCount = _myDoc.docs;
    for (int i = 0; i < _myDocCount.length; i++) {
      //storage.add(_myDoc);
    }
  }
}

class FireStoreDataBase {
  List StorageList = [];
  final CollectionReference collectionRef =
      FirebaseFirestore.instance.collection("DataBG");
   Future getData() async {
    try {
      //to get data from a single/particular document alone.
      // var temp = await collectionRef.doc("<your document ID here>").get();
      // to get data from all documents sequentially
      await collectionRef.get().then((querySnapshot) {
        for (var result in querySnapshot.docs) {
          StorageList.add(result.data());
        }
      });
      return StorageList;
    } catch (e) {
      debugPrint("Error - $e");
      return e;
    }
  }
}

// final CollectionReference _collectionRefs = FirebaseFirestore.instance.collection('collection');
//   Future<void> getDatas() async {
//     QuerySnapshot querySnapshot = await _collectionRefs.get();
//     final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

//     print(allData);