import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class RandomData extends StatelessWidget {
  final _fbapp = FirebaseFirestore.instance;
  RandomData({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.cyanAccent),
      home: Scaffold(
          body: FutureBuilder<QuerySnapshot>(
              future: _fbapp.collection('DataBG').get(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: Text('no data'),
                  );
                }
                final documents = snapshot.data!.docs.reversed;
                for (var item in documents) {
                  final name = item.get('nameBoardGame');
                  final imageSrt = item.get('boardgameimages');
                  print('$name : "$imageSrt"');
                }
                return Center(child: Text('Have data'));
              })),
    );
  }
}

