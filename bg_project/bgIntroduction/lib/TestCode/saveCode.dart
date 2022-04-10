// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';

// Future<void> main(List<String> args) async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//       //   options: const FirebaseOptions(
//       //       apiKey: "AIzaSyBgNZ5HwqP8QIIYE4vylJaBi60t-oR1O94",
//       //       authDomain: "bg-introduction-3aade.firebaseapp.com",
//       //       databaseURL:
//       //           "https://bg-introduction-3aade-default-rtdb.asia-southeast1.firebasedatabase.app",
//       //       projectId: "bg-introduction-3aade",
//       //       storageBucket: "bg-introduction-3aade.appspot.com",
//       //       messagingSenderId: "593533535477",
//       //       appId: "1:593533535477:web:c07a64b0a410954d84b1bc",
//       //       measurementId: "G-70KQKL9Q8J"),
//       );
//   getData();
// }

// void getData() async {

//   print('------------------------------------------------------------');
//   print(element['boardgameimages']);
//   // print('------------------------------------------------------------');
//   // print(element['howToPlayLink']);
//   // print('------------------------------------------------------------');
//   // print(element['maximumNumberOfPlayers']);
//   // print('------------------------------------------------------------');
//   // print(element['nameBoardGame']);
//   // print('------------------------------------------------------------');
//   // print(element['numberOfBoardGames']);
//   // print('------------------------------------------------------------');
//   // print(element['playTimePerRound']);
//   // print('------------------------------------------------------------');
//   // print(element['typeBoardGame']);
//   // print('------------------------------------------------------------');
//   // print(element['youtubeLink']);
// }

// final _fireStore = FirebaseFirestore.instance;
// Future<void> getDatas() async {
//   // Get docs from collection reference
//   QuerySnapshot querySnapshot = await _fireStore.collection('DataBG').get();
//   ;

//   // Get data from docs and convert map to List
//   final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
//   //for a specific field
//   // final allDatas = querySnapshot.docs.map((doc) => doc.get('fieldName')).toList();

//   print(allData[1]);
//   print(allData[2]);
// }

// Future getDocs() async {
//   QuerySnapshot querySnapshot =
//       await FirebaseFirestore.instance.collection("DataBG").get();
//   for (int i = 0; i < querySnapshot.docs.length; i++) {
//     var a = querySnapshot.docs[i];
//     print(a);
//   }
// }
  // String nameBG = element['nameBoardGame'];
  // String linkBG = element['howToPlayLink'];
  // String maxPYBG = element['maximumNumberOfPlayers'];
  // String imageBG = element['boardgameimages'];
  // String timeBG = element['playTimePerRound'];
  // String typeBG = element['typeBoardGame'];
  // String youtubeBG = element['youtubeLink'];

// #
// # Generated file, do not edit.
// #

// list(APPEND FLUTTER_PLUGIN_LIST
//   url_launcher_windows
// )

// set(PLUGIN_BUNDLED_LIBRARIES)

// foreach(plugin ${FLUTTER_PLUGIN_LIST})

//   add_subdirectory(flutter/ephemeral/.plugin_symlinks/${plugin}/windows plugins/${plugin})
//   target_link_libraries(${BINARY_NAME} PRIVATE ${plugin}_plugin)
//   list(APPEND PLUGIN_BUNDLED_LIBRARIES $<TARGET_FILE:${plugin}_plugin>)
//   list(APPEND PLUGIN_BUNDLED_LIBRARIES ${${plugin}_bundled_libraries})
// endforeach(plugin)


//C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.31.31103/bin/Hostx64/x64/cl.exe