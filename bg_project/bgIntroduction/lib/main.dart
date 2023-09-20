import 'package:bg_introducetion/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
   
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbapp = Firebase.initializeApp();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FutureBuilder(
      future: _fbapp,
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          print('You have an error! ${snapshot.error.toString()}');
          return const Text('Sommthing went wrong');
        } else if (snapshot.hasData) {
          return MaterialApp(home: SplashScreen());
          // return MyHomePage(title: 'My Amazing counter App');//dont care this line it's for test firebase
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ));
  }
}
