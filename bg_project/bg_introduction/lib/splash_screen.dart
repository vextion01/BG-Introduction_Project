import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff292929),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 96.0, middle: 0.5),
            Pin(size: 27.0, end: 50.0),
            child: Text(
              'Version 1.0',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xfffff5f5),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 10.0, end: 9.0),
            Pin(size: 206.0, middle: 0.3088),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/pic 1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 96.0, middle: 0.5),
            Pin(size: 27.0, end: 50.0),
            child: Text(
              'Version 1.0',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xfffff5f5),
              ),
              softWrap: false,
            ),
          ),
        ],
      ),
    );
  }
}
