
import 'package:flutter/material.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({ Key? key }) : super(key: key);

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar (title: Text("ทดสอบ connect firebase")),
    // body: StreamBuilder(stream: Fire,),
      
    );
  }
}