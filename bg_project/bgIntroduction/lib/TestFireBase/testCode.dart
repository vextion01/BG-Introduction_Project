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
// import 'dart:html';

// import 'package:bg_introducetion/TestFireBase/model/testrandom2.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:bg_introducetion/TestFireBase/model/firestoretester.dart';
// import 'package:bg_introducetion/splash_screen.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:adobe_xd/pinned.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'dart:math';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: const FirebaseOptions(
//         apiKey: "AIzaSyBgNZ5HwqP8QIIYE4vylJaBi60t-oR1O94",
//         authDomain: "bg-introduction-3aade.firebaseapp.com",
//         databaseURL:
//             "https://bg-introduction-3aade-default-rtdb.asia-southeast1.firebasedatabase.app",
//         projectId: "bg-introduction-3aade",
//         storageBucket: "bg-introduction-3aade.appspot.com",
//         messagingSenderId: "593533535477",
//         appId: "1:593533535477:web:c07a64b0a410954d84b1bc",
//         measurementId: "G-70KQKL9Q8J"),
//   );
//   runApp(RandomData());
// }

// class RandomData extends StatelessWidget {
//   final _fbapp = FirebaseFirestore.instance.collection('DataBG');
//   var testVar;
//   RandomData({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(primaryColor: Colors.cyanAccent),
//       home: Scaffold(
//           body: FutureBuilder<QuerySnapshot>(
//               future: _fbapp.get(),
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return Center(
//                     child: Text('no data'),
//                   );
//                 }
//                 //   final documents = snapshot.data!.docs.reversed;
//                 //   for (var item in documents) {
//                 //     final name = item.get('nameBoardGame');
//                 //     final imageSrt = item.get('boardgameimages');
//                 //     // final randomtest = item.get((Random().nextInt(documents.length)));
//                 //     // print(documents.length);
//                 //     // print('A');
//                 //     //print('$randomtest ');
//                 //   }
//                 // var element = _fbapp.docs[Random().nextInt(collection.size)];
//                 //   testVar = documents.toList();
//                 print("hello  + $testVar");
//                 return Center(child: Text('Have data'));
//               })),
//     );
//   }
// }

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