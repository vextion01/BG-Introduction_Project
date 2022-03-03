import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirestoreTesting extends StatelessWidget {
  const FirestoreTesting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    throw UnimplementedError();
  }
  
}

@override
Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text("test firestore"),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('DataBG').snapshots(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) return Text('Loading data ..');
            return Column(
              children: <Widget>[
                Text(snapshot.data.documents[0]['nameBoardGame'].toString()),
                Text(snapshot.data.documents[0]['typeBoardGame'].toString()),
              ],
            );
          }) // This trailing comma makes auto-formatting nicer for build methods.
      );
}
