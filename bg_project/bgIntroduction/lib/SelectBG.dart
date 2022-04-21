import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:bg_introducetion/ShowDropdownData.dart';
import 'package:bg_introducetion/insert_att_screen.dart';
import 'package:http/http.dart';
import 'dart:async';

class selectBG extends StatefulWidget {
  selectBG({Key? key}) : super(key: key);

  @override
  State<selectBG> createState() => _selectBGState();
}

class _selectBGState extends State<selectBG> {
  static String nameBG = 'nameBG';
  static String imageBG = 'boardgameimages';
  static String linkBG = 'howToPlayLink';
  static String maxPYBG = '1maximumNumberOfPlayers';
  static String timeBG = 'playTimePerRound';
  static String typeBG = 'typeBoardGame';
  static String youtubeBG = 'youtubeLink';

  void getDataSelect(String value) async {
    print("first : Active ");
    print("getDataSelect : Active ");
    print("getDataSelect.youtubeLink : " + youtubeBG);

    final collection =
        await FirebaseFirestore.instance.collection('DataBG').get();
    setState(() {
      for (var element in collection.docs) {
        if (element['nameBoardGame'] == value) {
          nameBG = element['nameBoardGame'];
          imageBG = element['boardgameimages'].toString();
          linkBG = element['howToPlayLink'];
          maxPYBG = element['maximumNumberOfPlayers'].toString();
          timeBG = element['playTimePerRound'].toString();
          typeBG = element['typeBoardGame'];
          youtubeBG = element['youtubeLink'];
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('SelectBoardgame'),
      ),
      body: ListView.builder(
          itemCount: nameBGList.length,
          itemBuilder: (context, i) {
            return GestureDetector(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(imageBGList[i]),
                ),
                title: Text(nameBGList[i]),
                onTap: () {
                  getDataSelect(nameBGList[i]);
                  Timer(Duration(seconds: 1), () {
                    
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShowDataDropdown(
                                  imageBG: _selectBGState.imageBG,
                                  nameBG: _selectBGState.nameBG,
                                  linkBG: _selectBGState.linkBG,
                                  maxPYBG: _selectBGState.maxPYBG,
                                  timeBG: _selectBGState.timeBG,
                                  typeBG: _selectBGState.typeBG,
                                  youtubeBG: _selectBGState.youtubeBG,
                                )));
                  });
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => ShowDataDropdown()));
                },
              ),
            );
          }),
    );
  }
}
