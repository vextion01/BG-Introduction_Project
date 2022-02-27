import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './mian_screen.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  final ImageProvider logo;
  SplashScreen({
    Key? key,
    this.logo = const AssetImage('assets\images\logo.png'),
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
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => MianScreen(),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: logo,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          buildGroup1(context),
        ],
      ),
    );
  }

  Widget buildGroup1(context) {
    return Align(
      alignment: Alignment(0.0, 0.492),
      child: SizedBox(
        width: 200.0,
        height: 50.0,
        child: PageLink(
          links: [
            PageLinkInfo(
              transition: LinkTransition.Fade,
              ease: Curves.easeOut,
              duration: 0.3,
              pageBuilder: () => MianScreen(),
            ),
          ],
          child: Stack(
            children: <Widget>[
              SizedBox.expand(
                  child: SvgPicture.string(
                _svg_lf64be,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              )),
              SingleChildScrollView(
                primary: false,
                child: SizedBox(
                  width: 132.0,
                  height: 27.0,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 68.0),
                        Pin(size: 27.0, middle: 0.0),
                        child: Text(
                          'board game',
                          style: TextStyle(
                            fontFamily: 'Tahoma',
                            fontSize: 20,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const String _svg_lf64be =
    '<svg viewBox="80.0 371.0 200.0 50.0" ><path transform="translate(80.0, 371.0)" d="M 25 0 L 175 0 C 188.8071136474609 0 200 11.19288063049316 200 25 C 200 38.80712127685547 188.8071136474609 50 175 50 L 25 50 C 11.19288063049316 50 0 38.80712127685547 0 25 C 0 11.19288063049316 11.19288063049316 0 25 0 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
