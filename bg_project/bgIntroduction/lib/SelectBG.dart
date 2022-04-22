import 'package:auto_size_text/auto_size_text.dart';
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
  static String nameBG = '';
  static String imageBG = '';
  static String linkBG = '';
  static String maxPYBG = '';
  static String timeBG = '';
  static String typeBG = '';
  static String youtubeBG = '';

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
        backgroundColor: const Color(0xffe18721),
        title: const AutoSizeText('ผลลัพธ์จากการค้นหา',
            style: TextStyle(
              fontFamily: 'tahomo',
              fontSize: 24,
              color: Color(0xfffff5f5),
              fontWeight: FontWeight.w500,
            ),
            softWrap: false,
            textAlign: TextAlign.center),
      ), //ผลลัพธ์จากการค้นหา
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
                },
              ),
            );
          }),
    );
  }
}
