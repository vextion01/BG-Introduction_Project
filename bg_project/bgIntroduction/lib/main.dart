import 'package:bg_introducetion/TestFireBase/model/firestoretester.dart';
import 'package:bg_introducetion/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBgNZ5HwqP8QIIYE4vylJaBi60t-oR1O94",
        authDomain: "bg-introduction-3aade.firebaseapp.com",
        databaseURL: "https://bg-introduction-3aade-default-rtdb.asia-southeast1.firebasedatabase.app",
        projectId: "bg-introduction-3aade",
        storageBucket: "bg-introduction-3aade.appspot.com",
        messagingSenderId: "593533535477",
        appId: "1:593533535477:web:c07a64b0a410954d84b1bc",
        measurementId: "G-70KQKL9Q8J"),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbapp = Firebase.initializeApp();
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FutureBuilder(
          future: _fbapp,
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              print('You have an error! ${snapshot.error.toString()}');
              return const Text('Sommthing went wrong');
            } else if (snapshot.hasData) {
              return MaterialApp(
                  home: SplashScreen());
              // return MyHomePage(title: 'My Amazing counter App');//dont care this line it's for test firebase
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
    // home: SplashScreen());
  }
}


