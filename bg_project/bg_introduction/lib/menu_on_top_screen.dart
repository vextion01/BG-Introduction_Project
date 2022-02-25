import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './line3_button.dart';
import './mian_screen.dart';
import 'package:adobe_xd/page_link.dart';
import './save_data_screen.dart';
import './usetobe_bg_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuOnTopScreen extends StatelessWidget {
  MenuOnTopScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff292929),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(0.0, 0.247),
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
          Align(
            alignment: Alignment(0.0, 0.553),
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
                        pageBuilder: () => MianScreen(),
                      ),
                    ],
                    child: line3Button(),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 10.0, end: 9.0),
            Pin(size: 206.0, middle: 0.2627),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/pic 1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0x40ffffff),
              border: Border.all(width: 1.0, color: const Color(0x40707070)),
            ),
            margin: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
          ),
          Pinned.fromPins(
            Pin(size: 280.0, start: 0.0),
            Pin(size: 50.0, start: 78.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => SaveDataScreen(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Container(
                    color: const Color(0xff000000),
                  ),
                  Align(
                    alignment: Alignment(-0.404, -0.097),
                    child: SizedBox(
                      width: 129.0,
                      height: 19.0,
                      child: Text(
                        'บอร์ดเกมที่บันทึกไว้',
                        style: TextStyle(
                          fontFamily: 'Tahoma',
                          fontSize: 16,
                          color: const Color(0xfffff5f5),
                        ),
                        softWrap: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-1.0, -0.566),
            child: SizedBox(
              width: 280.0,
              height: 50.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => UsetobeBGScreen(),
                  ),
                ],
                child: Stack(
                  children: <Widget>[
                    Container(
                      color: const Color(0xff000000),
                    ),
                    Align(
                      alignment: Alignment(-0.392, -0.31),
                      child: SizedBox(
                        width: 132.0,
                        height: 21.0,
                        child: Text(
                          'บอร์ดเกมที่เคยดูข้อมูล',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 16,
                            color: const Color(0xfffff5f5),
                          ),
                          softWrap: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 20.0, start: 13.0),
            Pin(size: 20.0, middle: 0.229),
            child: SvgPicture.string(
              _svg_ly7heb,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 15.0, start: 16.0),
            Pin(size: 20.0, start: 93.0),
            child: SvgPicture.string(
              _svg_jtaa98,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
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

const String _svg_lf64be =
    '<svg viewBox="80.0 371.0 200.0 50.0" ><path transform="translate(80.0, 371.0)" d="M 25 0 L 175 0 C 188.8071136474609 0 200 11.19288063049316 200 25 C 200 38.80712127685547 188.8071136474609 50 175 50 L 25 50 C 11.19288063049316 50 0 38.80712127685547 0 25 C 0 11.19288063049316 11.19288063049316 0 25 0 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_zd7pm7 =
    '<svg viewBox="190.0 -79.0 360.0 56.0" ><path transform="translate(190.0, -79.0)" d="M 0 0 L 360 0 L 360 56 L 0 56 L 0 0 Z" fill="#121212" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ly7heb =
    '<svg viewBox="13.0 142.0 20.0 20.0" ><path transform="translate(12.44, 141.44)" d="M 20.5624828338623 10.54360675811768 C 20.57268333435059 16.05329513549805 16.07942199707031 20.55862617492676 10.56974983215332 20.56249809265137 C 8.190114974975586 20.5641918182373 6.004310131072998 19.73467445373535 4.28661060333252 18.34834098815918 C 3.839957714080811 17.98785591125488 3.806570529937744 17.31846046447754 4.212457180023193 16.91257095336914 L 4.666771411895752 16.45825576782227 C 5.013908386230469 16.11111831665039 5.568101406097412 16.07313346862793 5.95269775390625 16.37825584411621 C 7.218219757080078 17.38249206542969 8.819791793823242 17.98188781738281 10.56249141693115 17.98188781738281 C 14.66349601745605 17.98188781738281 17.98183822631836 14.6628885269165 17.98183822631836 10.56251811981201 C 17.98183822631836 6.461502552032471 14.66284942626953 3.143149852752686 10.56249141693115 3.143149852752686 C 8.594186782836914 3.143149852752686 6.806486129760742 3.908030271530151 5.479108333587646 5.156540393829346 L 7.525638580322266 7.203076362609863 C 7.932090759277344 7.609528541564941 7.644227504730225 8.304449081420898 7.069470405578613 8.304449081420898 L 1.207660675048828 8.304449081420898 C 0.8513305187225342 8.304449081420898 0.5625 8.015618324279785 0.5625 7.659286975860596 L 0.5625 1.797461867332458 C 0.5625 1.222702860832214 1.257418870925903 0.9348394274711609 1.663870096206665 1.341251373291016 L 3.654674530029297 3.332061529159546 C 5.449954986572266 1.61637282371521 7.883138656616211 0.5625 10.56249141693115 0.5625 C 16.07901763916016 0.5625 20.55228042602539 5.029443740844727 20.5624828338623 10.54360675811768 Z M 13.26764965057373 13.72038650512695 L 13.66373825073242 13.2111120223999 C 13.99188232421875 12.78921604156494 13.91587448120117 12.18119049072266 13.49398040771484 11.85308456420898 L 11.85281276702881 10.57659149169922 L 11.85281276702881 6.368962287902832 C 11.85281276702881 5.834485054016113 11.41954612731934 5.401218414306641 10.88507080078125 5.401218414306641 L 10.23991107940674 5.401218414306641 C 9.705436706542969 5.401218414306641 9.272170066833496 5.834485054016113 9.272170066833496 6.368962287902832 L 9.272170066833496 11.83876991271973 L 11.90962791442871 13.89014434814453 C 12.33152198791504 14.21824932098389 12.9395055770874 14.14228248596191 13.26765060424805 13.72038650512695 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jtaa98 =
    '<svg viewBox="16.0 93.0 15.0 20.0" ><path transform="translate(16.0, 93.0)" d="M 0 20 L 0 1.875 C 0 0.8394531607627869 0.8394531011581421 0 1.875 0 L 13.125 0 C 14.16054725646973 0 15 0.8394531607627869 15 1.875 L 15 20 L 7.5 15.625 L 0 20 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_claqaz =
    '<svg viewBox="306.0 7.0 46.0 10.0" ><path transform="translate(306.0, 7.0)" d="M 34.00020217895508 0 L 45.99990081787109 0 L 39.99959945678711 9.999899864196777 L 34.00020217895508 0 Z M 18 5.000400066375732 C 18 2.238300085067749 20.23830032348633 0 23.00040054321289 0 C 25.76160049438477 0 27.99990081787109 2.238300085067749 27.99990081787109 5.000400066375732 C 27.99990081787109 7.761600017547607 25.76160049438477 9.999899864196777 23.00040054321289 9.999899864196777 C 20.23830032348633 9.999899864196777 18 7.761600017547607 18 5.000400066375732 Z M 0 9.999899864196777 L 0 0 L 9.999899864196777 0 L 9.999899864196777 9.999899864196777 L 0 9.999899864196777 Z" fill="#ffffff" fill-opacity="0.38" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
