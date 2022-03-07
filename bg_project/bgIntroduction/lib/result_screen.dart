import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './mian_screen.dart';
import 'package:adobe_xd/page_link.dart';
import './info_screen.dart';
import './result_screen_new_random.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/TestFireBase/randomData.dart';
import 'dart:math';

class ResultScreen extends StatelessWidget {
  ResultScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe8b154),
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
            Pin(start: 27.5, end: 27.5),
            Pin(size: 27.0, middle: 0.5563),
            child: Stack(
              children: <Widget>[
                const Align(
                  alignment: Alignment(0.069, -1.0),
                  child: SizedBox(
                    width: 72.0,
                    height: 22.0,
                    child: Text(
                      'name 1   ',
                      style: TextStyle(
                        fontFamily: 'tahomo',
                        fontSize: 20,
                        color: Color(0xfffff5f5),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 1.0, end: -1.0),
                  child: SvgPicture.string(
                    _svg_zroa,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.05, -0.465),
            child: SizedBox(
              width: 139.0,
              height: 199.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/picname1.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.054, 0.447),
            child: SizedBox(
              width: 231.0,
              height: 50.0,
              child: SvgPicture.string(
                _svg_ummupq,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.054, 0.447),
            child: SizedBox(
              width: 231.0,
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
                    SizedBox.expand(
                        child: SvgPicture.string(
                      _svg_x74cde,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    )),
                    Transform.translate(
                      offset: Offset(32.0, 14.0),
                      child: SizedBox(
                        width: 174.0,
                        child: Text(
                          'รายละเอียดบอร์ดเกม',
                          style: TextStyle(
                            fontFamily: 'tahomo',
                            fontSize: 20,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.044, 0.661),
            child: SizedBox(
              width: 193.0,
              height: 50.0,
              child: SvgPicture.string(
                _svg_h31310,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.044, 0.661),
            child: SizedBox(
              width: 193.0,
              height: 50.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => ResultScreenNewRandom(),
                  ),
                ],
                child: Stack(
                  children: <Widget>[
                    SizedBox.expand(
                        child: SvgPicture.string(
                      _svg_vtwk7t,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    )),
                    Transform.translate(
                      offset: Offset(34.0, 15.0),
                      child: SizedBox(
                        width: 132.0,
                        child: Text(
                          'สุ่มใหม่อีกครั้ง',
                          style: TextStyle(
                            fontFamily: 'tahomo',
                            fontSize: 20,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 78.0, start: 0.0),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      color: const Color(0xffe18721),
                    ),
                    Align(
                      alignment: Alignment(0.149, 0.0),
                      child: SizedBox(
                        width: 179.0,
                        height: 22.0,
                        child: Text(
                          'ผลลัพท์จากการค้นหา   ',
                          style: TextStyle(
                            fontFamily: 'tahomo',
                            fontSize: 20,
                            color: const Color(0xfffff5f5),
                            fontWeight: FontWeight.w500,
                          ),
                          softWrap: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_b7n0an =
    '<svg viewBox="311.7 590.0 40.5 31.5" ><path transform="translate(311.75, 587.75)" d="M 19.71351623535156 10.42453098297119 L 6.75 21.10148429870605 L 6.75 32.625 C 6.75 33.24631881713867 7.253679752349854 33.75 7.875 33.75 L 15.75421905517578 33.72961044311523 C 16.37334251403809 33.72651672363281 16.87360191345215 33.22373962402344 16.87359428405762 32.60461044311523 L 16.87359428405762 25.875 C 16.87359428405762 25.2536792755127 17.37727355957031 24.75 17.99859428405762 24.75 L 22.49859428405762 24.75 C 23.11991500854492 24.75 23.62359428405762 25.2536792755127 23.62359428405762 25.875 L 23.62359428405762 32.59968566894531 C 23.62265968322754 32.89866256713867 23.74077224731445 33.18571472167969 23.95185279846191 33.39745712280273 C 24.16293334960938 33.60919570922852 24.44961547851562 33.72820281982422 24.74859428405762 33.72820281982422 L 32.625 33.75 C 33.24631881713867 33.75 33.75 33.24631881713867 33.75 32.625 L 33.75 21.09375 L 20.78929710388184 10.42453098297119 C 20.47534942626953 10.17147254943848 20.0274658203125 10.17147254943848 19.71351623535156 10.42453098297119 Z M 40.19062423706055 17.68148422241211 L 34.3125 12.83625030517578 L 34.3125 3.097265720367432 C 34.3125 2.631275415420532 33.93474197387695 2.253515720367432 33.46875 2.253515720367432 L 29.53125 2.253515720367432 C 29.06525993347168 2.253515720367432 28.6875 2.631275653839111 28.6875 3.097265958786011 L 28.6875 8.202655792236328 L 22.39242172241211 3.0234375 C 21.14653778076172 1.998199701309204 19.34924697875977 1.998199701309204 18.10336112976074 3.0234375 L 0.3051562607288361 17.68148422241211 C -0.05417710542678833 17.97848320007324 -0.1045555472373962 18.51061058044434 0.1926565170288086 18.8697681427002 L 1.985625028610229 21.04945373535156 C 2.127959966659546 21.22252655029297 2.333295822143555 21.33187103271484 2.556345701217651 21.35337066650391 C 2.779395580291748 21.37487030029297 3.001836538314819 21.30676078796387 3.174609661102295 21.1640625 L 19.71351623535156 7.541718482971191 C 20.0274658203125 7.288661003112793 20.47534942626953 7.288661003112793 20.78929901123047 7.541719436645508 L 37.32890701293945 21.1640625 C 37.68806457519531 21.46127319335938 38.22019195556641 21.4108943939209 38.51718902587891 21.05156326293945 L 40.31015777587891 18.87187576293945 C 40.45273590087891 18.69840240478516 40.52028274536133 18.47525405883789 40.49784851074219 18.25183296203613 C 40.47541427612305 18.02840995788574 40.36484909057617 17.82314682006836 40.19063186645508 17.68148422241211 Z" fill="#f1f1f1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_zroa =
    '<svg viewBox="27.5 368.0 305.0 1.0" ><path transform="translate(27.5, 368.0)" d="M 0 0 L 305 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x74cde =
    '<svg viewBox="61.0 427.0 231.0 50.0" ><path transform="translate(61.0, 427.0)" d="M 29 0 L 202 0 C 217.9315795898438 0 231 11.19288063049316 231 25 C 231 38.80712127685547 217.9315795898438 50 202 50 L 29 50 C 13.06842613220215 50 0 38.80712127685547 0 25 C 0 11.19288063049316 13.06842613220215 0 29 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ummupq =
    '<svg viewBox="61.0 427.0 231.0 50.0" ><path transform="translate(61.0, 427.0)" d="M 29 1 C 25.22196960449219 1 21.55146789550781 1.640586853027344 18.09053039550781 2.903999328613281 C 14.75263977050781 4.122470855712891 11.75396728515625 5.864059448242188 9.1778564453125 8.08038330078125 C 6.609649658203125 10.28988265991211 4.594329833984375 12.857177734375 3.187850952148438 15.71094131469727 C 1.736083984375 18.65655899047852 1 21.78185272216797 1 25 C 1 28.21814727783203 1.736083984375 31.34344100952148 3.187850952148438 34.28905868530273 C 4.594329833984375 37.142822265625 6.609649658203125 39.71011734008789 9.1778564453125 41.91961669921875 C 11.75396728515625 44.13594055175781 14.75263977050781 45.87752914428711 18.09053039550781 47.09600067138672 C 21.55146789550781 48.35941314697266 25.22196960449219 49 29 49 L 202 49 C 205.7780303955078 49 209.4485321044922 48.35941314697266 212.9094696044922 47.09600067138672 C 216.2473449707031 45.87752914428711 219.2460327148438 44.13594055175781 221.8221435546875 41.91961669921875 C 224.3903503417969 39.71011734008789 226.4056701660156 37.142822265625 227.8121490478516 34.28905868530273 C 229.263916015625 31.34344100952148 230 28.21814727783203 230 25 C 230 21.78185272216797 229.263916015625 18.65655899047852 227.8121490478516 15.71094131469727 C 226.4056701660156 12.857177734375 224.3903503417969 10.28988265991211 221.8221435546875 8.08038330078125 C 219.2460327148438 5.864059448242188 216.2473449707031 4.122470855712891 212.9094696044922 2.903999328613281 C 209.4485321044922 1.640586853027344 205.7780303955078 1 202 1 L 29 1 M 29 0 L 202 0 C 217.9315948486328 0 231 11.1928825378418 231 25 C 231 38.8071174621582 217.9315948486328 50 202 50 L 29 50 C 13.06840515136719 50 0 38.8071174621582 0 25 C 0 11.1928825378418 13.06840515136719 0 29 0 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vtwk7t =
    '<svg viewBox="80.0 490.0 192.6 50.0" ><path transform="translate(80.0, 490.0)" d="M 24.07353210449219 0 L 168.5147247314453 0 C 181.8101654052734 0 192.5882568359375 11.19288063049316 192.5882568359375 25 C 192.5882568359375 38.80712127685547 181.8101654052734 50 168.5147247314453 50 L 24.07353210449219 50 C 10.77808666229248 50 0 38.80712127685547 0 25 C 0 11.19288063049316 10.77808666229248 0 24.07353210449219 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h31310 =
    '<svg viewBox="80.0 490.0 192.6 50.0" ><path transform="translate(80.0, 490.0)" d="M 24.07353210449219 1 C 20.96292114257812 1 17.94552612304688 1.632598876953125 15.10517883300781 2.880199432373047 C 12.35862731933594 4.086601257324219 9.89117431640625 5.814498901367188 7.77130126953125 8.015949249267578 C 5.648880004882812 10.22005081176758 3.982330322265625 12.78720092773438 2.817947387695312 15.64607620239258 C 1.611648559570312 18.60784912109375 1 21.75497436523438 1 25 C 1 28.24502563476562 1.611648559570312 31.39215087890625 2.817947387695312 34.35392379760742 C 3.982330322265625 37.21279907226562 5.648880004882812 39.77994918823242 7.77130126953125 41.98405075073242 C 9.89117431640625 44.18550109863281 12.35862731933594 45.91339874267578 15.10517883300781 47.11980056762695 C 17.94552612304688 48.36740112304688 20.96292114257812 49 24.07353210449219 49 L 168.5147247314453 49 C 171.6253356933594 49 174.6427001953125 48.36740112304688 177.4830780029297 47.11980056762695 C 180.2295989990234 45.91339874267578 182.6970825195312 44.18550109863281 184.8169555664062 41.98405075073242 C 186.9393463134766 39.77994918823242 188.6058959960938 37.21279907226562 189.7703094482422 34.35392379760742 C 190.9766082763672 31.39215087890625 191.5882568359375 28.24502563476562 191.5882568359375 25 C 191.5882568359375 21.75497436523438 190.9766082763672 18.60784912109375 189.7703094482422 15.64607620239258 C 188.6058959960938 12.78720092773438 186.9393463134766 10.22005081176758 184.8169555664062 8.015949249267578 C 182.6970825195312 5.814498901367188 180.2295989990234 4.086601257324219 177.4830780029297 2.880199432373047 C 174.6427001953125 1.632598876953125 171.6253356933594 1 168.5147247314453 1 L 24.07353210449219 1 M 24.07353210449219 0 L 168.5147247314453 0 C 181.8101501464844 0 192.5882568359375 11.19287490844727 192.5882568359375 25 C 192.5882568359375 38.80712509155273 181.8101501464844 50 168.5147247314453 50 L 24.07353210449219 50 C 10.778076171875 50 0 38.80712509155273 0 25 C 0 11.19287490844727 10.778076171875 0 24.07353210449219 0 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
