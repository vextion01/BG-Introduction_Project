import 'package:bg_introducetion/insert_name_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bg_introducetion/mian_screen.dart';
import 'package:bg_introducetion/SelectBG.dart';
import 'SelectBG.dart';
import 'dart:math';

class ShowDataDropdown extends StatefulWidget {
  final String imageBG;
  final String nameBG;
  final String linkBG;
  final String maxPYBG;
  final String timeBG;
  final String typeBG;
  final String youtubeBG;
  const ShowDataDropdown({
    Key? key,
    required this.imageBG,
    required this.nameBG,
    required this.linkBG,
    required this.maxPYBG,
    required this.timeBG,
    required this.typeBG,
    required this.youtubeBG,
  }) : super(key: key);
  @override
  State<ShowDataDropdown> createState() => _ShowDataDropdownState();
}

class _ShowDataDropdownState extends State<ShowDataDropdown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe8b154),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 50.0, start: 32.0),
            Pin(size: 50.0, end: 17.50),
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: Center(
                child: IconButton(
                  icon: SvgPicture.string(_svg_wzaoby),
                  iconSize: 100,
                  onPressed: () async {
                    //youtubeLink
                    String url = widget.youtubeBG;
                    var urllaunchable = await canLaunch(
                        url); //canLaunch is from url_launcher package
                    if (urllaunchable) {
                      await launch(
                          url); //launch is from url_launcher package to launch URL
                    } else {
                      print("URL can't be launched.");
                    }
                  },
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 40.5, end: 28.0),
            Pin(size: 31.5, end: 25.5),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const MianScreen(),
                ),
              ],
              child: SvgPicture.string(
                _svg_kzjlv,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 31.5, middle: 0.3143),
            Pin(size: 27.0, end: 30.0),
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                    child: SvgPicture.string(
                  _svg_tc1bn6,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
                Align(
                  alignment: Alignment(0.5, -0.561),
                  child: SizedBox(
                    width: 11.0,
                    height: 4.0,
                    child: SvgPicture.string(
                      _svg_rz1f5p,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.5, -0.091),
                  child: SizedBox(
                    width: 11.0,
                    height: 2.0,
                    child: SvgPicture.string(
                      _svg_de7pe,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.5, 0.273),
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: Center(
                        child: IconButton(
                      icon: SvgPicture.string(_svg_pwmcm),
                      iconSize: 100,
                      onPressed: () async {
                        //website link
                        String url = widget.linkBG;
                        var urllaunchable = await canLaunch(
                            url); //canLaunch is from url_launcher package
                        if (urllaunchable) {
                          await launch(
                              url); //launch is from url_launcher package to launch URL
                        } else {
                          print("URL can't be launched.");
                        }
                      },
                    )),
                  ),
                ),
                Align(
                  alignment: Alignment(0.486, 0.636),
                  child: SizedBox(
                    width: 12.0,
                    height: 2.0,
                    child: SvgPicture.string(
                      _svg_y5ob9l,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.00, -0.700),
            child: SizedBox(
              width: 250.0,
              height: 250.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(widget.imageBG),
                      // fit: BoxFit.cover
                    )),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 8.0, end: 8.0),
            Pin(size: 159.0, end: 89.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    border:
                        Border.all(width: 1.0, color: const Color(0xff707070)),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 200.0, start: 0.0),
                  Pin(size: 30.0, middle: 0.2000),
                  child: const Text(
                    'จำนวนผู้เล่นสูงสุด(คน) : ',
                    style: TextStyle(
                      fontFamily: 'tahomo',
                      fontSize: 20,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 34.0, start: 300.0),
                  Pin(size: 30.0, middle: 0.225),
                  child: Text(
                    widget.maxPYBG,
                    style: const TextStyle(
                      fontFamily: 'tahomo',
                      fontSize: 20,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 300.0, start: -15.0),
                  Pin(size: 30.0, middle: 0.4000),
                  child: const Text(
                    'ระยะเวลาการเล่นต่อรอบ(นาที) : ',
                    style: TextStyle(
                      fontFamily: 'tahomo',
                      fontSize: 20,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 34.0, start: 300.0),
                  Pin(size: 30.0, middle: 0.425),
                  child: Text(
                    widget.timeBG,
                    style: const TextStyle(
                      fontFamily: 'tahomo',
                      fontSize: 20,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 200.0, start: 0.0),
                  Pin(size: 30.0, middle: 0.6000),
                  child: const Text(
                    'ประเภทของบอร์ดเกม : ',
                    style: TextStyle(
                      fontFamily: 'tahomo',
                      fontSize: 20,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 100.0, start: 275.0),
                  Pin(size: 30.0, middle: 0.625),
                  child: Text(
                    widget.typeBG,
                    style: const TextStyle(
                      fontFamily: 'tahomo',
                      fontSize: 20,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.5, end: 27.5),
            Pin(size: 27.0, middle: 0.6),
            child: Stack(
              children: <Widget>[
                Align(
                  child: SizedBox(
                    width: 300.0,
                    height: 30.0,
                    child: Text(widget.nameBG,
                        style: const TextStyle(
                          fontFamily: 'tahomo',
                          fontSize: 24,
                          color: Color(0xfffff5f5),
                          fontWeight: FontWeight.bold,
                        ),
                        // textAlign: TextAlign.center,
                        softWrap: false,
                        textAlign: TextAlign.center),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 1.0, end: -1.0),
                  child: SvgPicture.string(
                    _svg_cmni56,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          //_svg_rlb0e
          Align(
            alignment: Alignment(0.0, 0.006),
            child: SizedBox(
              width: 237.0,
              height: 24.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 1.0, end: -1.0),
                    child: SvgPicture.string(
                      _svg_rlb0e,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Align(
                    alignment: Alignment(0.012, -1.0),
                    child: SizedBox(
                      width: 300.0,
                      height: 50.0,
                      child: Text('รายละเอียดบอร์ดเกม',
                          style: TextStyle(
                            fontFamily: 'tahomo',
                            fontSize: 24,
                            color: Color(0xfffff5f5),
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: false,
                          textAlign: TextAlign.center),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 78.0, start: 0.0),
            child: Container(
              color: const Color(0xffe18721),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 221.0, middle: 0.5036),
            Pin(size: 26.0, start: 25.0),
            child: const Text('รายละเอียดของบอร์ดเกม',
                style: TextStyle(
                  fontFamily: 'tahomo',
                  fontSize: 24,
                  color: Color(0xfffff5f5),
                  fontWeight: FontWeight.w500,
                ),
                softWrap: false,
                textAlign: TextAlign.center),
          ), //
        ],
      ),
    );
  }
}

const String _svg_wzaoby =
    '<svg viewBox="0.0 0.0 38.4 27.0" ><path transform="translate(-1.05, -4.5)" d="M 38.64761734008789 8.72458553314209 C 38.20598602294922 7.061695098876953 36.90478134155273 5.752054214477539 35.25264739990234 5.307609081268311 C 32.25803756713867 4.5 20.25 4.5 20.25 4.5 C 20.25 4.5 8.242031097412109 4.5 5.24735164642334 5.307609558105469 C 3.595218658447266 5.752125263214111 2.294015645980835 7.061695575714111 1.852382898330688 8.724586486816406 C 1.049976587295532 11.73867225646973 1.049976587295532 18.02728271484375 1.049976587295532 18.02728271484375 C 1.049976587295532 18.02728271484375 1.049976587295532 24.31589126586914 1.852382898330688 27.32997894287109 C 2.294015645980835 28.99287033081055 3.595218658447266 30.24794769287109 5.24735164642334 30.69239234924316 C 8.242031097412109 31.5 20.25 31.5 20.25 31.5 C 20.25 31.5 32.25796890258789 31.5 35.25264739990234 30.69239044189453 C 36.90478134155273 30.24794578552246 38.20598220825195 28.99286651611328 38.64761734008789 27.32997703552246 C 39.45002365112305 24.31589126586914 39.45002365112305 18.02728271484375 39.45002365112305 18.02728271484375 C 39.45002365112305 18.02728271484375 39.45002365112305 11.73867321014404 38.64761734008789 8.724587440490723 Z M 16.32269477844238 23.73686599731445 L 16.32269477844238 12.31769561767578 L 26.35903167724609 18.02742195129395 L 16.32269668579102 23.73686790466309 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mjo1mm =
    '<svg viewBox="0.0 0.0 20.0 30.0" ><path  d="M 0 30 L 0 2.8125 C 0 1.259179711341858 1.119270801544189 0 2.5 0 L 17.5 0 C 18.88072967529297 0 20 1.259179711341858 20 2.8125 L 20 30 L 10 23.4375 L 0 30 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kzjlv =
    '<svg viewBox="291.5 583.0 40.5 31.5" ><path transform="translate(291.5, 580.75)" d="M 19.71351623535156 10.42453098297119 L 6.75 21.10148429870605 L 6.75 32.625 C 6.75 33.24631881713867 7.253679752349854 33.75 7.875 33.75 L 15.75421905517578 33.72961044311523 C 16.37334251403809 33.72651672363281 16.87360191345215 33.22373962402344 16.87359428405762 32.60461044311523 L 16.87359428405762 25.875 C 16.87359428405762 25.2536792755127 17.37727355957031 24.75 17.99859428405762 24.75 L 22.49859428405762 24.75 C 23.11991500854492 24.75 23.62359428405762 25.2536792755127 23.62359428405762 25.875 L 23.62359428405762 32.59968566894531 C 23.62265968322754 32.89866256713867 23.74077224731445 33.18571472167969 23.95185279846191 33.39745712280273 C 24.16293334960938 33.60919570922852 24.44961547851562 33.72820281982422 24.74859428405762 33.72820281982422 L 32.625 33.75 C 33.24631881713867 33.75 33.75 33.24631881713867 33.75 32.625 L 33.75 21.09375 L 20.78929710388184 10.42453098297119 C 20.47534942626953 10.17147254943848 20.0274658203125 10.17147254943848 19.71351623535156 10.42453098297119 Z M 40.19062423706055 17.68148422241211 L 34.3125 12.83625030517578 L 34.3125 3.097265720367432 C 34.3125 2.631275415420532 33.93474197387695 2.253515720367432 33.46875 2.253515720367432 L 29.53125 2.253515720367432 C 29.06525993347168 2.253515720367432 28.6875 2.631275653839111 28.6875 3.097265958786011 L 28.6875 8.202655792236328 L 22.39242172241211 3.0234375 C 21.14653778076172 1.998199701309204 19.34924697875977 1.998199701309204 18.10336112976074 3.0234375 L 0.3051562607288361 17.68148422241211 C -0.05417710542678833 17.97848320007324 -0.1045555472373962 18.51061058044434 0.1926565170288086 18.8697681427002 L 1.985625028610229 21.04945373535156 C 2.127959966659546 21.22252655029297 2.333295822143555 21.33187103271484 2.556345701217651 21.35337066650391 C 2.779395580291748 21.37487030029297 3.001836538314819 21.30676078796387 3.174609661102295 21.1640625 L 19.71351623535156 7.541718482971191 C 20.0274658203125 7.288661003112793 20.47534942626953 7.288661003112793 20.78929901123047 7.541719436645508 L 37.32890701293945 21.1640625 C 37.68806457519531 21.46127319335938 38.22019195556641 21.4108943939209 38.51718902587891 21.05156326293945 L 40.31015777587891 18.87187576293945 C 40.45273590087891 18.69840240478516 40.52028274536133 18.47525405883789 40.49784851074219 18.25183296203613 C 40.47541427612305 18.02840995788574 40.36484909057617 17.82314682006836 40.19063186645508 17.68148422241211 Z" fill="#f1f1f1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tc1bn6 =
    '<svg viewBox="0.0 0.0 31.5 27.0" ><path transform="translate(-2.25, -4.5)" d="M 32.625 4.5 L 13.5 4.5 C 12.88125038146973 4.5 12.375 5.041406154632568 12.375 5.66015625 L 12.375 7.875 L 5.203125 7.875 C 3.578906297683716 7.875 2.25 9.203906059265137 2.25 10.828125 L 2.25 25.41796875 C 2.25 28.76484298706055 4.9921875 31.5 8.296875 31.5 L 27.96328163146973 31.5 C 31.13437461853027 31.5 33.75 28.90546798706055 33.75 25.734375 L 33.75 5.625 C 33.75 5.006249904632568 33.24375152587891 4.5 32.625 4.5 Z M 12.375 10.125 L 12.375 23.625 L 9.421875 23.625 L 9.421875 11.47500038146973 C 9.421875 10.99687576293945 9.365625381469727 10.53984451293945 9.189844131469727 10.125 L 12.375 10.125 Z M 11.1796875 28.08281326293945 C 10.40625 28.828125 9.365625381469727 29.25 8.33203125 29.25 C 7.3125 29.25 6.356249809265137 28.84921836853027 5.625 28.125 C 4.900781154632568 27.40078163146973 4.5 26.4375 4.5 25.41796875 L 4.5 11.47500038146973 C 4.5 10.72968769073486 5.090624809265137 10.125 5.8359375 10.125 C 6.581250190734863 10.125 7.171875 10.72968769073486 7.171875 11.47500038146973 L 7.171875 24.75 C 7.171875 25.36874961853027 7.678124904632568 25.875 8.296875 25.875 L 12.33984375 25.875 C 12.234375 26.69062423706055 11.83359336853027 27.46406173706055 11.1796875 28.08281326293945 Z M 31.5 25.734375 C 31.5 26.66953086853027 31.12031173706055 27.54843711853027 30.45234298706055 28.21640586853027 C 29.78437423706055 28.88437461853027 28.89140510559082 29.25 27.96327972412109 29.25 L 13.16953086853027 29.25 C 14.06953048706055 28.20234298706055 14.625 26.86640548706055 14.625 25.41796875 L 14.625 7.875 L 14.625 6.8203125 L 31.5 6.8203125 L 31.5 25.734375 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rz1f5p =
    '<svg viewBox="15.2 5.1 11.3 3.9" ><path transform="translate(-2.25, -4.5)" d="M 17.4375 9.5625 L 28.6875 9.5625 L 28.6875 13.5 L 17.4375 13.5 L 17.4375 9.5625 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_de7pe =
    '<svg viewBox="15.2 11.3 11.3 2.3" ><path transform="translate(-2.25, -4.5)" d="M 17.4375 15.75 L 28.6875 15.75 L 28.6875 18 L 17.4375 18 L 17.4375 15.75 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pwmcm =
    '<svg viewBox="15.2 15.8 11.3 2.3" ><path transform="translate(-2.25, -4.5)" d="M 17.4375 20.25 L 28.6875 20.25 L 28.6875 22.5 L 17.4375 22.5 L 17.4375 20.25 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_y5ob9l =
    '<svg viewBox="14.6 20.3 11.8 2.3" ><path transform="translate(-2.25, -4.5)" d="M 28.6875 24.75 L 17.4375 24.75 C 17.4375 24.75 17.4375 27 16.875 27 C 17.3671875 27 26.62031173706055 27 27.33046913146973 27 C 28.6875 27 28.6875 25.5234375 28.6875 24.75 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cmni56 =
    '<svg viewBox="27.5 286.0 305.0 1.0" ><path transform="translate(27.5, 286.0)" d="M 0 0 L 305 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rlb0e =
    '<svg viewBox="61.5 334.0 237.0 1.0" ><path transform="translate(61.5, 334.0)" d="M 0 0 L 237 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
