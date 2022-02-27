import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './mian_screen.dart';
import 'package:adobe_xd/page_link.dart';
import './info_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff292929),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 40.5, end: 7.7),
            Pin(size: 31.5, end: 18.5),
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
                _svg_b7n0an,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 40.5, end: 7.7),
            Pin(size: 31.5, end: 18.5),
            child: SvgPicture.string(
              _svg_b7n0an,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 78.0, start: 24.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff3a3838),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 252.0, middle: 0.5),
            Pin(size: 24.0, start: 51.0),
            child: Text(
              'ค้นหาบอร์ดเกมด้วยคุณลักษณะ',
              style: TextStyle(
                fontFamily: 'Tahoma',
                fontSize: 20,
                color: const Color(0xfffff5f5),
              ),
              softWrap: false,
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
          Align(
            alignment: Alignment(0.034, 0.097),
            child: SizedBox(
              width: 66.0,
              height: 24.0,
              child: Text(
                'name 1',
                style: TextStyle(
                  fontFamily: 'Tahoma',
                  fontSize: 20,
                  color: const Color(0xfffff5f5),
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.5, end: 27.5),
            Pin(size: 1.0, middle: 0.5759),
            child: SvgPicture.string(
              _svg_zroa,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment(0.05, -0.465),
            child: Container(
              width: 139.0,
              height: 199.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets\images\pic 1.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.447),
            child: SizedBox(
              width: 238.0,
              height: 50.0,
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 7.2, 0.0),
                      child: SizedBox.expand(
                          child: SvgPicture.string(
                        _svg_s64q4f,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      )),
                    ),
                    SingleChildScrollView(
                      primary: false,
                      child: SizedBox(
                        width: 174.0,
                        height: 24.0,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 64.0),
                              Pin(size: 24.0, middle: 0.0),
                              child: Text(
                                'รายละเอียดบอร์ดเกม',
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
          Align(
            alignment: Alignment(0.0, 0.661),
            child: SizedBox(
              width: 200.0,
              height: 50.0,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 7.4, 0.0),
                    child: SizedBox.expand(
                        child: SvgPicture.string(
                      _svg_c16q2v,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    )),
                  ),
                  SingleChildScrollView(
                    primary: false,
                    child: SizedBox(
                      width: 132.0,
                      height: 24.0,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 68.0),
                            Pin(size: 24.0, middle: 0.1538),
                            child: Text(
                              'สุ่มใหม่อีกครั้ง',
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
        ],
      ),
    );
  }
}

const String _svg_b7n0an =
    '<svg viewBox="311.7 590.0 40.5 31.5" ><path transform="translate(311.75, 587.75)" d="M 19.71351623535156 10.42453098297119 L 6.75 21.10148429870605 L 6.75 32.625 C 6.75 33.24631881713867 7.253679752349854 33.75 7.875 33.75 L 15.75421905517578 33.72961044311523 C 16.37334251403809 33.72651672363281 16.87360191345215 33.22373962402344 16.87359428405762 32.60461044311523 L 16.87359428405762 25.875 C 16.87359428405762 25.2536792755127 17.37727355957031 24.75 17.99859428405762 24.75 L 22.49859428405762 24.75 C 23.11991500854492 24.75 23.62359428405762 25.2536792755127 23.62359428405762 25.875 L 23.62359428405762 32.59968566894531 C 23.62265968322754 32.89866256713867 23.74077224731445 33.18571472167969 23.95185279846191 33.39745712280273 C 24.16293334960938 33.60919570922852 24.44961547851562 33.72820281982422 24.74859428405762 33.72820281982422 L 32.625 33.75 C 33.24631881713867 33.75 33.75 33.24631881713867 33.75 32.625 L 33.75 21.09375 L 20.78929710388184 10.42453098297119 C 20.47534942626953 10.17147254943848 20.0274658203125 10.17147254943848 19.71351623535156 10.42453098297119 Z M 40.19062423706055 17.68148422241211 L 34.3125 12.83625030517578 L 34.3125 3.097265720367432 C 34.3125 2.631275415420532 33.93474197387695 2.253515720367432 33.46875 2.253515720367432 L 29.53125 2.253515720367432 C 29.06525993347168 2.253515720367432 28.6875 2.631275653839111 28.6875 3.097265958786011 L 28.6875 8.202655792236328 L 22.39242172241211 3.0234375 C 21.14653778076172 1.998199701309204 19.34924697875977 1.998199701309204 18.10336112976074 3.0234375 L 0.3051562607288361 17.68148422241211 C -0.05417710542678833 17.97848320007324 -0.1045555472373962 18.51061058044434 0.1926565170288086 18.8697681427002 L 1.985625028610229 21.04945373535156 C 2.127959966659546 21.22252655029297 2.333295822143555 21.33187103271484 2.556345701217651 21.35337066650391 C 2.779395580291748 21.37487030029297 3.001836538314819 21.30676078796387 3.174609661102295 21.1640625 L 19.71351623535156 7.541718482971191 C 20.0274658203125 7.288661003112793 20.47534942626953 7.288661003112793 20.78929901123047 7.541719436645508 L 37.32890701293945 21.1640625 C 37.68806457519531 21.46127319335938 38.22019195556641 21.4108943939209 38.51718902587891 21.05156326293945 L 40.31015777587891 18.87187576293945 C 40.45273590087891 18.69840240478516 40.52028274536133 18.47525405883789 40.49784851074219 18.25183296203613 C 40.47541427612305 18.02840995788574 40.36484909057617 17.82314682006836 40.19063186645508 17.68148422241211 Z" fill="#f1f1f1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_claqaz =
    '<svg viewBox="306.0 7.0 46.0 10.0" ><path transform="translate(306.0, 7.0)" d="M 34.00020217895508 0 L 45.99990081787109 0 L 39.99959945678711 9.999899864196777 L 34.00020217895508 0 Z M 18 5.000400066375732 C 18 2.238300085067749 20.23830032348633 0 23.00040054321289 0 C 25.76160049438477 0 27.99990081787109 2.238300085067749 27.99990081787109 5.000400066375732 C 27.99990081787109 7.761600017547607 25.76160049438477 9.999899864196777 23.00040054321289 9.999899864196777 C 20.23830032348633 9.999899864196777 18 7.761600017547607 18 5.000400066375732 Z M 0 9.999899864196777 L 0 0 L 9.999899864196777 0 L 9.999899864196777 9.999899864196777 L 0 9.999899864196777 Z" fill="#ffffff" fill-opacity="0.38" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_zroa =
    '<svg viewBox="27.5 368.0 305.0 1.0" ><path transform="translate(27.5, 368.0)" d="M 0 0 L 305 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_s64q4f =
    '<svg viewBox="80.0 371.0 230.8 50.0" ><path transform="translate(80.0, 371.0)" d="M 28.84666442871094 0 L 201.9266510009766 0 C 217.8582305908203 0 230.7733154296875 11.19288063049316 230.7733154296875 25 C 230.7733154296875 38.80712127685547 217.8582305908203 50 201.9266510009766 50 L 28.84666442871094 50 C 12.91509056091309 50 0 38.80712127685547 0 25 C 0 11.19288063049316 12.91509056091309 0 28.84666442871094 0 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_c16q2v =
    '<svg viewBox="80.0 371.0 192.6 50.0" ><path transform="translate(80.0, 371.0)" d="M 24.07353210449219 0 L 168.5147247314453 0 C 181.8101654052734 0 192.5882568359375 11.19288063049316 192.5882568359375 25 C 192.5882568359375 38.80712127685547 181.8101654052734 50 168.5147247314453 50 L 24.07353210449219 50 C 10.77808666229248 50 0 38.80712127685547 0 25 C 0 11.19288063049316 10.77808666229248 0 24.07353210449219 0 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
