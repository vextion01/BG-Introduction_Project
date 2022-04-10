import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
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
  runApp(RandomData());
}

class RandomData extends StatelessWidget {
  final _fbapp = FirebaseFirestore.instance.collection('DataBG').get();
  RandomData({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.cyanAccent),
      home: Scaffold(
          body: FutureBuilder<QuerySnapshot>(
              future: _fbapp,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: Text('no data'),
                  );
                }
                final documents = snapshot.data!.docs.reversed;
                for (var item in documents) {}
                var element =
                    documents.elementAt(Random().nextInt(documents.length));
                print("Random data is here : ${element.data()}");
                return Center(child: Text('Have data'));
              })),
    );
  }
}
