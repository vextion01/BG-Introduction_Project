import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './mian_screen.dart';
import 'package:adobe_xd/page_link.dart';
import './insert_name_screen.dart';
import 'insert_att_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FindBGScreen extends StatelessWidget {
  const FindBGScreen({
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
            Pin(size: 56.0, start: -2.0),
            child: Stack(
              children: <Widget>[
                SizedBox.expand(
                    child: SvgPicture.string(
                  _svg_z8latu,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 10.0, end: 9.0),
            Pin(size: 206.0, middle: 0.2465),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 24.0, start: 10.0),
            Pin(size: 24.0, start: 12.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const MianScreen(),
                ),
              ],
              child: Container(
                decoration: const BoxDecoration(),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 287.0, start: 54.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => const MianScreen(),
                ),
              ],
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 299.0, end: 0.0),
            child: Container(
              color: const Color(0xd9ce9b45),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 91.0, middle: 0.6211),
            child: Container(
              color: const Color(0xff332f2f),
            ),
          ),
          const Align(
            alignment: Alignment(0.0, 0.203),
            child: SizedBox(
              width: 154.0,
              height: 30.0,
              child: AutoSizeText(
                'ค้นหาบอร์ดเกม',
                style: TextStyle(
                  fontFamily: 'Tahoma',
                  fontSize: 25,
                  color: Color(0xfffff5f5),
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 91.0, middle: 0.6211),
            child: Container(
              color: const Color(0xffe38f00),
            ),
          ),
          const Align(
            alignment: Alignment(0.015, 0.21),
            child: SizedBox(
              width: 157.0,
              height: 27.0,
              child: AutoSizeText(
                'ค้นหาบอร์ดเกม  ',
                style: TextStyle(
                  fontFamily: 'tahomo',
                  fontSize: 25,
                  color: Color(0xfffff5f5),
                  fontWeight: FontWeight.w500,
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 241.6, middle: 0.5),
            Pin(size: 131.0, end: 61.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 20.8, end: 20.8),
                  Pin(size: 50.0, start: 0.0),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => const InsertNameScreen(),
                      ),
                    ],
                    child: Stack(
                      children: <Widget>[
                        SizedBox.expand(
                            child: SvgPicture.string(
                          _svg_qjeqo,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        )),
                        SizedBox.expand(
                            child: SvgPicture.string(
                          _svg_tz7b1,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        )),
                        Pinned.fromPins(
                          Pin(start: 34.0, end: 34.0),
                          Pin(size: 25.0, middle: 0.56),
                          child: const AutoSizeText(
                            'ค้นหาด้วยชื่อ',
                            style: TextStyle(
                              fontFamily: 'tahomo',
                              fontSize: 22.5,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 50.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      PageLink(
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
                              _svg_pxfp4,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                            SizedBox.expand(
                                child: SvgPicture.string(
                              _svg_w3dbp1,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                            Pinned.fromPins(
                              Pin(start: 1.0, end: 0.6),
                              Pin(size: 25.0, middle: 0.52),
                              child: const AutoSizeText(
                                'ค้นหาคุณลักษณะ',
                                style: TextStyle(
                                  fontFamily: 'tahomo',
                                  fontSize: 22.5,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 40.5, end: 9.0),
            Pin(size: 31.5, end: 18.5),
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
                _svg_yt396u,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_z8latu =
    '<svg viewBox="0.0 0.0 360.0 56.0" ><path  d="M 0 0 L 360 0 L 360 56 L 0 56 L 0 0 Z" fill="#e18721" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qjeqo =
    '<svg viewBox="88.0 418.0 200.0 50.0" ><path transform="translate(88.0, 418.0)" d="M 25 0 L 175 0 C 188.8071136474609 0 200 11.19288063049316 200 25 C 200 38.80712127685547 188.8071136474609 50 175 50 L 25 50 C 11.19288063049316 50 0 38.80712127685547 0 25 C 0 11.19288063049316 11.19288063049316 0 25 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tz7b1 =
    '<svg viewBox="88.0 418.0 200.0 50.0" ><path transform="translate(88.0, 418.0)" d="M 25 1 C 21.75958251953125 1 18.61663818359375 1.634422302246094 15.65841674804688 2.885631561279297 C 12.8006591796875 4.094367980957031 10.23390197753906 5.825000762939453 8.029449462890625 8.029422760009766 C 5.824996948242188 10.23386764526367 4.094375610351562 12.80063247680664 2.885635375976562 15.65842056274414 C 1.634414672851562 18.61660575866699 1 21.75957870483398 1 25 C 1 28.24042129516602 1.634414672851562 31.38339424133301 2.885635375976562 34.34157943725586 C 4.094375610351562 37.19936752319336 5.824996948242188 39.76613235473633 8.029449462890625 41.9705810546875 C 10.23390197753906 44.17499923706055 12.8006591796875 45.90563201904297 15.65841674804688 47.1143684387207 C 18.61663818359375 48.36557769775391 21.75958251953125 49 25 49 L 175 49 C 178.2404174804688 49 181.3833618164062 48.36557769775391 184.3415832519531 47.1143684387207 C 187.1993408203125 45.90563201904297 189.76611328125 44.17499923706055 191.9705505371094 41.9705810546875 C 194.1750030517578 39.76613235473633 195.9056243896484 37.19936752319336 197.1143646240234 34.34157943725586 C 198.3655853271484 31.38339424133301 199 28.24042129516602 199 25 C 199 21.75957870483398 198.3655853271484 18.61660575866699 197.1143646240234 15.65842056274414 C 195.9056243896484 12.80063247680664 194.1750030517578 10.23386764526367 191.9705505371094 8.029422760009766 C 189.76611328125 5.825000762939453 187.1993408203125 4.094367980957031 184.3415832519531 2.885631561279297 C 181.3833618164062 1.634422302246094 178.2404174804688 1 175 1 L 25 1 M 25 0 L 175 0 C 188.8070983886719 0 200 11.19286727905273 200 25 C 200 38.80713272094727 188.8070983886719 50 175 50 L 25 50 C 11.19290161132812 50 0 38.80713272094727 0 25 C 0 11.19286727905273 11.19290161132812 0 25 0 Z" fill="#707070" stroke="#da00da" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pxfp4 =
    '<svg viewBox="0.0 0.0 241.6 50.0" ><path  d="M 30.19752883911133 0 L 211.3827056884766 0 C 228.0603332519531 0 241.5802307128906 11.19288063049316 241.5802307128906 25 C 241.5802307128906 38.80712127685547 228.0603332519531 50 211.3827056884766 50 L 30.19752883911133 50 C 13.51989269256592 50 0 38.80712127685547 0 25 C 0 11.19288063049316 13.51989269256592 0 30.19752883911133 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_w3dbp1 =
    '<svg viewBox="0.0 0.0 241.6 50.0" ><path  d="M 30.19752883911133 1 C 26.28342628479004 1 22.48705863952637 1.634422302246094 18.91382026672363 2.885631561279297 C 15.4619312286377 4.094367980957031 12.36154270172119 5.825000762939453 9.698781967163086 8.029422760009766 C 7.036020755767822 10.23386764526367 4.945600986480713 12.80063247680664 3.485562324523926 15.65842056274414 C 1.97421133518219 18.61660575866699 1.207901120185852 21.75957870483398 1.207901120185852 25 C 1.207901120185852 28.24042129516602 1.97421133518219 31.38339424133301 3.485562324523926 34.34157943725586 C 4.945600986480713 37.19936752319336 7.036020755767822 39.76613235473633 9.698781967163086 41.9705810546875 C 12.36154270172119 44.17499923706055 15.4619312286377 45.90563201904297 18.91382026672363 47.1143684387207 C 22.48705863952637 48.36557769775391 26.28342628479004 49 30.19752883911133 49 L 211.3827056884766 49 C 215.2967987060547 49 219.0931854248047 48.36557769775391 222.6664123535156 47.1143684387207 C 226.1183013916016 45.90563201904297 229.2187042236328 44.17499923706055 231.8814544677734 41.9705810546875 C 234.5442047119141 39.76613235473633 236.6346435546875 37.19936752319336 238.0946655273438 34.34157943725586 C 239.6060180664062 31.38339424133301 240.3723297119141 28.24042129516602 240.3723297119141 25 C 240.3723297119141 21.75957870483398 239.6060180664062 18.61660575866699 238.0946655273438 15.65842056274414 C 236.6346435546875 12.80063247680664 234.5442047119141 10.23386764526367 231.8814544677734 8.029422760009766 C 229.2187042236328 5.825000762939453 226.1183013916016 4.094367980957031 222.6664123535156 2.885631561279297 C 219.0931854248047 1.634422302246094 215.2967987060547 1 211.3827056884766 1 L 30.19752883911133 1 M 30.19752883911133 0 L 211.3827056884766 0 C 228.0603179931641 0 241.5802307128906 11.19286727905273 241.5802307128906 25 C 241.5802307128906 38.80713272094727 228.0603179931641 50 211.3827056884766 50 L 30.19752883911133 50 C 13.51991939544678 50 0 38.80713272094727 0 25 C 0 11.19286727905273 13.51991939544678 0 30.19752883911133 0 Z" fill="#707070" stroke="#00e0ff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yt396u =
    '<svg viewBox="310.5 590.0 40.5 31.5" ><path transform="translate(310.5, 587.75)" d="M 19.71351623535156 10.42453098297119 L 6.75 21.10148429870605 L 6.75 32.625 C 6.75 33.24631881713867 7.253679752349854 33.75 7.875 33.75 L 15.75421905517578 33.72961044311523 C 16.37334251403809 33.72651672363281 16.87360191345215 33.22373962402344 16.87359428405762 32.60461044311523 L 16.87359428405762 25.875 C 16.87359428405762 25.2536792755127 17.37727355957031 24.75 17.99859428405762 24.75 L 22.49859428405762 24.75 C 23.11991500854492 24.75 23.62359428405762 25.2536792755127 23.62359428405762 25.875 L 23.62359428405762 32.59968566894531 C 23.62265968322754 32.89866256713867 23.74077224731445 33.18571472167969 23.95185279846191 33.39745712280273 C 24.16293334960938 33.60919570922852 24.44961547851562 33.72820281982422 24.74859428405762 33.72820281982422 L 32.625 33.75 C 33.24631881713867 33.75 33.75 33.24631881713867 33.75 32.625 L 33.75 21.09375 L 20.78929710388184 10.42453098297119 C 20.47534942626953 10.17147254943848 20.0274658203125 10.17147254943848 19.71351623535156 10.42453098297119 Z M 40.19062423706055 17.68148422241211 L 34.3125 12.83625030517578 L 34.3125 3.097265720367432 C 34.3125 2.631275415420532 33.93474197387695 2.253515720367432 33.46875 2.253515720367432 L 29.53125 2.253515720367432 C 29.06525993347168 2.253515720367432 28.6875 2.631275653839111 28.6875 3.097265958786011 L 28.6875 8.202655792236328 L 22.39242172241211 3.0234375 C 21.14653778076172 1.998199701309204 19.34924697875977 1.998199701309204 18.10336112976074 3.0234375 L 0.3051562607288361 17.68148422241211 C -0.05417710542678833 17.97848320007324 -0.1045555472373962 18.51061058044434 0.1926565170288086 18.8697681427002 L 1.985625028610229 21.04945373535156 C 2.127959966659546 21.22252655029297 2.333295822143555 21.33187103271484 2.556345701217651 21.35337066650391 C 2.779395580291748 21.37487030029297 3.001836538314819 21.30676078796387 3.174609661102295 21.1640625 L 19.71351623535156 7.541718482971191 C 20.0274658203125 7.288661003112793 20.47534942626953 7.288661003112793 20.78929901123047 7.541719436645508 L 37.32890701293945 21.1640625 C 37.68806457519531 21.46127319335938 38.22019195556641 21.4108943939209 38.51718902587891 21.05156326293945 L 40.31015777587891 18.87187576293945 C 40.45273590087891 18.69840240478516 40.52028274536133 18.47525405883789 40.49784851074219 18.25183296203613 C 40.47541427612305 18.02840995788574 40.36484909057617 17.82314682006836 40.19063186645508 17.68148422241211 Z" fill="#f1f1f1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
