import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './mian_screen.dart';
import 'package:adobe_xd/page_link.dart';
import './info_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchByattScreen extends StatelessWidget {
  SearchByattScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe8b154),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 56.0, start: 0.0),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    SizedBox.expand(
                        child: SvgPicture.string(
                      _svg_h8cja,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    )),
                    Pinned.fromPins(
                      Pin(size: 18.0, start: 21.0),
                      Pin(size: 12.0, middle: 0.5),
                      child: PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.Fade,
                            ease: Curves.easeOut,
                            duration: 0.3,
                            pageBuilder: () => MianScreen(),
                          ),
                        ],
                        child: SvgPicture.string(
                          _svg_uyx2,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
                Transform.translate(
                  offset: Offset(64.0, 19.0),
                  child: Text(
                    'บอร์ดเกมที่ค้นหาด้วยคุณลักษณะ      ',
                    style: TextStyle(
                      fontFamily: 'tahomo',
                      fontSize: 16,
                      color: const Color(0xfffff5f5),
                      fontWeight: FontWeight.w500,
                    ),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 56.0, 0.0, 0.0),
            child: SizedBox.expand(
                child: SvgPicture.string(
              _svg_a30hdn,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            )),
          ),
          Pinned.fromPins(
            Pin(start: -1.0, end: 0.0),
            Pin(size: 293.0, start: 56.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 1.0, end: 0.0),
                  Pin(size: 48.0, start: 0.0),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => InfoScreen(),
                      ),
                    ],
                    child: Stack(
                      children: <Widget>[
                        Container(
                          color: const Color(0x0f000000),
                        ),
                        Pinned.fromPins(
                          Pin(size: 73.0, start: 30.0),
                          Pin(size: 20.0, middle: 0.5357),
                          child: Text(
                            'รายการที่ xx',
                            style: TextStyle(
                              fontFamily: 'tahomo',
                              fontSize: 16,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 1.0, end: 0.0),
                  Pin(size: 48.0, middle: 0.2),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => InfoScreen(),
                      ),
                    ],
                    child: Stack(
                      children: <Widget>[
                        Container(
                          color: const Color(0x0f000000),
                        ),
                        Pinned.fromPins(
                          Pin(size: 73.0, start: 30.0),
                          Pin(size: 20.0, middle: 0.5357),
                          child: Text(
                            'รายการที่ xx',
                            style: TextStyle(
                              fontFamily: 'tahomo',
                              fontSize: 16,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 1.0, end: 0.0),
                  Pin(size: 48.0, middle: 0.4),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => InfoScreen(),
                      ),
                    ],
                    child: Stack(
                      children: <Widget>[
                        Container(
                          color: const Color(0x0f000000),
                        ),
                        Pinned.fromPins(
                          Pin(size: 73.0, start: 30.0),
                          Pin(size: 20.0, middle: 0.5357),
                          child: Text(
                            'รายการที่ xx',
                            style: TextStyle(
                              fontFamily: 'tahomo',
                              fontSize: 16,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 1.0, end: 0.0),
                  Pin(size: 48.0, middle: 0.6),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => InfoScreen(),
                      ),
                    ],
                    child: Stack(
                      children: <Widget>[
                        Container(
                          color: const Color(0x0f000000),
                        ),
                        Pinned.fromPins(
                          Pin(size: 73.0, start: 32.0),
                          Pin(size: 20.0, middle: 0.5357),
                          child: Text(
                            'รายการที่ xx',
                            style: TextStyle(
                              fontFamily: 'tahomo',
                              fontSize: 16,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 1.0),
                  Pin(size: 48.0, middle: 0.8),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => InfoScreen(),
                      ),
                    ],
                    child: Stack(
                      children: <Widget>[
                        Container(
                          color: const Color(0x0f000000),
                        ),
                        Pinned.fromPins(
                          Pin(size: 73.0, start: 30.0),
                          Pin(size: 20.0, middle: 0.5357),
                          child: Text(
                            'รายการที่ xx',
                            style: TextStyle(
                              fontFamily: 'tahomo',
                              fontSize: 16,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 1.0, end: 0.0),
                  Pin(size: 48.0, end: 0.0),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => InfoScreen(),
                      ),
                    ],
                    child: Stack(
                      children: <Widget>[
                        Container(
                          color: const Color(0x0f020200),
                        ),
                        Pinned.fromPins(
                          Pin(size: 73.0, start: 30.0),
                          Pin(size: 20.0, middle: 0.5357),
                          child: Text(
                            'รายการที่ xx',
                            style: TextStyle(
                              fontFamily: 'tahomo',
                              fontSize: 16,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            ),
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
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

const String _svg_h8cja =
    '<svg viewBox="190.0 -79.0 360.0 56.0" ><path transform="translate(190.0, -79.0)" d="M 0 0 L 360 0 L 360 56 L 0 56 L 0 0 Z" fill="#e18721" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_uyx2 =
    '<svg viewBox="211.0 -57.0 18.0 12.0" ><path transform="translate(211.0, -57.0)" d="M 18 11.99970054626465 L 17.99900054931641 11.99970054626465 L 0 11.99970054626465 L 0 9.999899864196777 L 18 9.999899864196777 L 18 11.99870014190674 L 18 11.99970054626465 Z M 18 7.000200271606445 L 17.99900054931641 7.000200271606445 L 0 7.000200271606445 L 0 5.000400066375732 L 18 5.000400066375732 L 18 6.999199867248535 L 18 7.000200271606445 Z M 18 1.999800086021423 L 17.99900054931641 1.999800086021423 L 0 1.999800086021423 L 0 7.095336940210473e-08 L 18 7.095336940210473e-08 L 18 1.998800039291382 L 18 1.999800086021423 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_a30hdn =
    '<svg viewBox="0.0 56.0 360.0 584.0" ><path transform="translate(0.0, 56.0)" d="M 4 0 L 356 0 C 358.2091369628906 0 360 1.926082491874695 360 4.30202579498291 L 360 579.697998046875 C 360 582.073974609375 358.2091369628906 584 356 584 L 4 584 C 1.790860891342163 584 0 582.073974609375 0 579.697998046875 L 0 4.30202579498291 C 0 1.926082491874695 1.790860891342163 0 4 0 Z" fill="#e8b154" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
