import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './line3_button.dart';
import './menu_on_top_screen.dart';
import 'package:adobe_xd/page_link.dart';
import './insert_name_screen.dart';
import './insert_att_screen.dart';
import './mian_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FindBGScreen extends StatelessWidget {
  FindBGScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff292929),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 10.0, end: 9.0),
            Pin(size: 206.0, middle: 0.2949),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/pic 1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.6),
            child: SizedBox(
              width: 200.0,
              height: 50.0,
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
                              'สุ่มบอร์ดเกม',
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
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 56.0, start: 24.0),
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                    child: SvgPicture.string(
                  _svg_zd7pm7,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 13.0),
                  Pin(size: 24.0, middle: 0.5),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => MenuOnTopScreen(),
                      ),
                    ],
                    child: line3Button(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0x661a1a1a),
            margin: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 305.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xd92c2a2a),
                border: Border.all(width: 1.0, color: const Color(0xd9707070)),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.597),
            child: SizedBox(
              width: 200.0,
              height: 50.0,
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
                              'ค้นหาบอร์ดเกม',
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
          Pinned.fromPins(
            Pin(size: 200.0, middle: 0.5),
            Pin(size: 50.0, end: 29.0),
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
                            'สุ่มบอร์ดเกม',
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
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 91.0, middle: 0.6211),
            child: Container(
              color: const Color(0xff332f2f),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.203),
            child: SizedBox(
              width: 154.0,
              height: 30.0,
              child: Text(
                'ค้นหาบอร์ดเกม',
                style: TextStyle(
                  fontFamily: 'Tahoma',
                  fontSize: 25,
                  color: const Color(0xfffff5f5),
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 10.0, end: 9.0),
            Pin(size: 206.0, middle: 0.2949),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/pic 1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.6),
            child: SizedBox(
              width: 200.0,
              height: 50.0,
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
                              'สุ่มบอร์ดเกม',
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
          Container(
            color: const Color(0x661a1a1a),
            margin: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 305.0, end: 0.0),
            child: Container(
              color: const Color(0xd92c2a2a),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.597),
            child: SizedBox(
              width: 200.0,
              height: 50.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => InsertNameScreen(),
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
                                'ค้นหาด้วยชื่อ',
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
          ),
          Pinned.fromPins(
            Pin(size: 200.0, middle: 0.5),
            Pin(size: 50.0, end: 29.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => InsertAttScreen(),
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
                      width: 151.0,
                      height: 27.0,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: -9.0, end: 58.0),
                            Pin(size: 27.0, middle: 0.0435),
                            child: Text(
                              'ค้นหาคุณลักษณะ',
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
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 91.0, middle: 0.6211),
            child: Container(
              color: const Color(0xff332f2f),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 271.0, start: 76.0),
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
                  color: Colors.transparent,
                  border: Border.all(width: 1.0, color: Colors.transparent),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.203),
            child: SizedBox(
              width: 154.0,
              height: 30.0,
              child: Text(
                'ค้นหาบอร์ดเกม',
                style: TextStyle(
                  fontFamily: 'Tahoma',
                  fontSize: 25,
                  color: const Color(0xfffff5f5),
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 24.0, start: 0.0),
            child: Stack(
              children: <Widget>[
                Container(
                  color: const Color(0xff000000),
                ),
                Pinned.fromPins(
                  Pin(size: 46.0, end: 8.0),
                  Pin(size: 10.0, middle: 0.5),
                  child: SvgPicture.string(
                    _svg_claqaz,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_lf64be =
    '<svg viewBox="80.0 371.0 200.0 50.0" ><path transform="translate(80.0, 371.0)" d="M 25 0 L 175 0 C 188.8071136474609 0 200 11.19288063049316 200 25 C 200 38.80712127685547 188.8071136474609 50 175 50 L 25 50 C 11.19288063049316 50 0 38.80712127685547 0 25 C 0 11.19288063049316 11.19288063049316 0 25 0 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_zd7pm7 =
    '<svg viewBox="190.0 -79.0 360.0 56.0" ><path transform="translate(190.0, -79.0)" d="M 0 0 L 360 0 L 360 56 L 0 56 L 0 0 Z" fill="#121212" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_claqaz =
    '<svg viewBox="306.0 7.0 46.0 10.0" ><path transform="translate(306.0, 7.0)" d="M 34.00020217895508 0 L 45.99990081787109 0 L 39.99959945678711 9.999899864196777 L 34.00020217895508 0 Z M 18 5.000400066375732 C 18 2.238300085067749 20.23830032348633 0 23.00040054321289 0 C 25.76160049438477 0 27.99990081787109 2.238300085067749 27.99990081787109 5.000400066375732 C 27.99990081787109 7.761600017547607 25.76160049438477 9.999899864196777 23.00040054321289 9.999899864196777 C 20.23830032348633 9.999899864196777 18 7.761600017547607 18 5.000400066375732 Z M 0 9.999899864196777 L 0 0 L 9.999899864196777 0 L 9.999899864196777 9.999899864196777 L 0 9.999899864196777 Z" fill="#ffffff" fill-opacity="0.38" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
