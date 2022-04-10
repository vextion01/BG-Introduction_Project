//  import 'package:bg_introducetion/TestFireBase/model/firestoretester.dart';
// import 'package:bg_introducetion/splash_screen.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:adobe_xd/pinned.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'dart:math';
 
//  class _DropdownItemState extends State<DropdownItem> {
//   String? selectedValue = null;
//   final _dropdownFormKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//         key: _dropdownFormKey,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             DropdownButtonFormField(
//                 decoration: InputDecoration(
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.blue, width: 2),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.blue, width: 2),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   filled: true,
//                   fillColor: Colors.blueAccent,
//                 ),
//                 validator: (value) => value == null ? "Select a country" : null,
//                 dropdownColor: Colors.blueAccent,
//                 value: selectedValue,
//                 onChanged: (String? newValue) {
//                   setState(() {
//                     selectedValue = newValue!;
//                   });
//                 },
//                 items: dropdownItems),
//             ElevatedButton(
//                 onPressed: () {
//                   if (_dropdownFormKey.currentState!.validate()) {
//                     //valid flow
//                   }
//                 },
//                 child: Text("Submit"))
//           ],
//         ));
//   }
// }