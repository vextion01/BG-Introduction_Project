import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './line3_button.dart';
import './menu_on_top_screen.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchByattScreen extends StatelessWidget {
  SearchByattScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff292929),
      body: Stack(
        children: <Widget>[
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
          Pinned.fromPins(
            Pin(size: 213.0, middle: 0.3673),
            Pin(size: 19.0, start: 43.0),
            child: Text(
              'บอร์ดเกมที่ค้นหาด้วยคุณลักษณะ',
              style: TextStyle(
                fontFamily: 'Tahoma',
                fontSize: 16,
                color: const Color(0xfffff5f5),
              ),
              softWrap: false,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff121212),
              borderRadius: BorderRadius.circular(4.0),
            ),
            margin: EdgeInsets.fromLTRB(0.0, 83.0, 0.0, 17.0),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 48.0, start: 91.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0x0fffffff),
                    border:
                        Border.all(width: 1.0, color: const Color(0x0f707070)),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 80.0, start: 30.0),
                  Pin(size: 19.0, middle: 0.5172),
                  child: Text(
                    'รายการที่ xx',
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      fontSize: 16,
                      color: const Color(0xfffff5f5),
                    ),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 3.0, end: -3.0),
            Pin(size: 48.0, middle: 0.2348),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0x0fffffff),
                    border:
                        Border.all(width: 1.0, color: const Color(0x0f707070)),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 80.0, start: 30.0),
                  Pin(size: 19.0, middle: 0.5172),
                  child: Text(
                    'รายการที่ xx',
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      fontSize: 16,
                      color: const Color(0xfffff5f5),
                    ),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 48.0, middle: 0.3159),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0x0fffffff),
                    border:
                        Border.all(width: 1.0, color: const Color(0x0f707070)),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 80.0, start: 30.0),
                  Pin(size: 19.0, middle: 0.5172),
                  child: Text(
                    'รายการที่ xx',
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      fontSize: 16,
                      color: const Color(0xfffff5f5),
                    ),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 48.0, middle: 0.397),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0x0fffffff),
                    border:
                        Border.all(width: 1.0, color: const Color(0x0f707070)),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 80.0, start: 30.0),
                  Pin(size: 19.0, middle: 0.5172),
                  child: Text(
                    'รายการที่ xx',
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      fontSize: 16,
                      color: const Color(0xfffff5f5),
                    ),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 3.0, end: -3.0),
            Pin(size: 48.0, middle: 0.478),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0x0fffffff),
                    border:
                        Border.all(width: 1.0, color: const Color(0x0f707070)),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 80.0, start: 30.0),
                  Pin(size: 19.0, middle: 0.5172),
                  child: Text(
                    'รายการที่ xx',
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      fontSize: 16,
                      color: const Color(0xfffff5f5),
                    ),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 48.0, middle: 0.5591),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0x0fffffff),
                    border:
                        Border.all(width: 1.0, color: const Color(0x0f707070)),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 80.0, start: 30.0),
                  Pin(size: 19.0, middle: 0.5172),
                  child: Text(
                    'รายการที่ xx',
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      fontSize: 16,
                      color: const Color(0xfffff5f5),
                    ),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xff000000),
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 616.0),
          ),
          Pinned.fromPins(
            Pin(size: 46.0, end: 8.0),
            Pin(size: 10.0, middle: 0.0111),
            child: SvgPicture.string(
              _svg_claqaz,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_zd7pm7 =
    '<svg viewBox="190.0 -79.0 360.0 56.0" ><path transform="translate(190.0, -79.0)" d="M 0 0 L 360 0 L 360 56 L 0 56 L 0 0 Z" fill="#121212" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_claqaz =
    '<svg viewBox="306.0 7.0 46.0 10.0" ><path transform="translate(306.0, 7.0)" d="M 34.00020217895508 0 L 45.99990081787109 0 L 39.99959945678711 9.999899864196777 L 34.00020217895508 0 Z M 18 5.000400066375732 C 18 2.238300085067749 20.23830032348633 0 23.00040054321289 0 C 25.76160049438477 0 27.99990081787109 2.238300085067749 27.99990081787109 5.000400066375732 C 27.99990081787109 7.761600017547607 25.76160049438477 9.999899864196777 23.00040054321289 9.999899864196777 C 20.23830032348633 9.999899864196777 18 7.761600017547607 18 5.000400066375732 Z M 0 9.999899864196777 L 0 0 L 9.999899864196777 0 L 9.999899864196777 9.999899864196777 L 0 9.999899864196777 Z" fill="#ffffff" fill-opacity="0.38" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
