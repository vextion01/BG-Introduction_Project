import 'dart:math';

import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './find_bg_screen.dart';
import 'package:adobe_xd/page_link.dart';
import './result_screen.dart';
import './menu_on_top_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'TestFireBase/randomData.dart';

class MianScreen extends StatelessWidget {
  MianScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe8b154),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 10.0, end: 9.0),
            Pin(size: 206.0, middle: 0.2627),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.247),
            child: SizedBox(
              width: 200.0,
              height: 50.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => FindBGScreen(),
                  ),
                ],
                child: Stack(
                  children: <Widget>[
                    SizedBox.expand(
                        child: SvgPicture.string(
                      _svg_ne1p2k,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    )),
                    SizedBox.expand(
                        child: SvgPicture.string(
                      _svg_viguok,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    )),
                    Transform.translate(
                      offset: Offset(34.0, 14.0),
                      child: const SizedBox(
                        width: 132.0,
                        child: Text(
                          'ค้นหาบอร์ดเกม',
                          style: TextStyle(
                            fontFamily: 'tahomo',
                            fontSize: 20,
                            color: Color(0xff000000),
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
            alignment: Alignment(0.0, 0.536),
            child: SizedBox(
              width: 200.0,
              height: 50.0,
              child: PageLink(
                
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => ResultScreen(),
                  ),
                ],
                child: Stack(
                  children: <Widget>[
                    SizedBox.expand(
                        child: SvgPicture.string(
                      _svg_h5fhu,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    )),
                    SizedBox.expand(
                        child: SvgPicture.string(
                      _svg_lzsmz2,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    )),
                    Transform.translate(
                      offset: const Offset(34.0, 14.0),
                      child: const SizedBox(
                        width: 132.0,
                        child: Text(
                          'สุ่มบอร์ดเกม',
                          style: TextStyle(
                            fontFamily: 'tahomo',
                            fontSize: 20,
                            color: Color(0xff000000),
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
            Pin(size: 56.0, start: 0.0),
            child: Stack(
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
                        pageBuilder: () => MenuOnTopScreen(),
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
          ),
        ],
      ),
    );
  }
}

const String _svg_ne1p2k =
    '<svg viewBox="80.0 368.0 200.0 50.0" ><path transform="translate(80.0, 368.0)" d="M 25 0 L 175 0 C 188.8071136474609 0 200 11.19288063049316 200 25 C 200 38.80712127685547 188.8071136474609 50 175 50 L 25 50 C 11.19288063049316 50 0 38.80712127685547 0 25 C 0 11.19288063049316 11.19288063049316 0 25 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_viguok =
    '<svg viewBox="80.0 368.0 200.0 50.0" ><path transform="translate(80.0, 368.0)" d="M 25 1 C 21.75958251953125 1 18.61663818359375 1.634422302246094 15.65841674804688 2.885631561279297 C 12.8006591796875 4.094367980957031 10.23390197753906 5.825000762939453 8.029449462890625 8.029422760009766 C 5.824996948242188 10.23386764526367 4.094375610351562 12.80063247680664 2.885635375976562 15.65842056274414 C 1.634414672851562 18.61660575866699 1 21.75957870483398 1 25 C 1 28.24042129516602 1.634414672851562 31.38339424133301 2.885635375976562 34.34157943725586 C 4.094375610351562 37.19936752319336 5.824996948242188 39.76613235473633 8.029449462890625 41.9705810546875 C 10.23390197753906 44.17499923706055 12.8006591796875 45.90563201904297 15.65841674804688 47.1143684387207 C 18.61663818359375 48.36557769775391 21.75958251953125 49 25 49 L 175 49 C 178.2404174804688 49 181.3833618164062 48.36557769775391 184.3415832519531 47.1143684387207 C 187.1993408203125 45.90563201904297 189.76611328125 44.17499923706055 191.9705505371094 41.9705810546875 C 194.1750030517578 39.76613235473633 195.9056243896484 37.19936752319336 197.1143646240234 34.34157943725586 C 198.3655853271484 31.38339424133301 199 28.24042129516602 199 25 C 199 21.75957870483398 198.3655853271484 18.61660575866699 197.1143646240234 15.65842056274414 C 195.9056243896484 12.80063247680664 194.1750030517578 10.23386764526367 191.9705505371094 8.029422760009766 C 189.76611328125 5.825000762939453 187.1993408203125 4.094367980957031 184.3415832519531 2.885631561279297 C 181.3833618164062 1.634422302246094 178.2404174804688 1 175 1 L 25 1 M 25 0 L 175 0 C 188.8070983886719 0 200 11.19286727905273 200 25 C 200 38.80713272094727 188.8070983886719 50 175 50 L 25 50 C 11.19290161132812 50 0 38.80713272094727 0 25 C 0 11.19286727905273 11.19290161132812 0 25 0 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h5fhu =
    '<svg viewBox="80.0 453.0 200.0 50.0" ><path transform="translate(80.0, 453.0)" d="M 25 0 L 175 0 C 188.8071136474609 0 200 11.19288063049316 200 25 C 200 38.80712127685547 188.8071136474609 50 175 50 L 25 50 C 11.19288063049316 50 0 38.80712127685547 0 25 C 0 11.19288063049316 11.19288063049316 0 25 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lzsmz2 =
    '<svg viewBox="80.0 453.0 200.0 50.0" ><path transform="translate(80.0, 453.0)" d="M 25 1 C 21.75958251953125 1 18.61663818359375 1.634422302246094 15.65841674804688 2.885631561279297 C 12.8006591796875 4.094367980957031 10.23390197753906 5.825000762939453 8.029449462890625 8.029422760009766 C 5.824996948242188 10.23386764526367 4.094375610351562 12.80063247680664 2.885635375976562 15.65842056274414 C 1.634414672851562 18.61660575866699 1 21.75957870483398 1 25 C 1 28.24042129516602 1.634414672851562 31.38339424133301 2.885635375976562 34.34157943725586 C 4.094375610351562 37.19936752319336 5.824996948242188 39.76613235473633 8.029449462890625 41.9705810546875 C 10.23390197753906 44.17499923706055 12.8006591796875 45.90563201904297 15.65841674804688 47.1143684387207 C 18.61663818359375 48.36557769775391 21.75958251953125 49 25 49 L 175 49 C 178.2404174804688 49 181.3833618164062 48.36557769775391 184.3415832519531 47.1143684387207 C 187.1993408203125 45.90563201904297 189.76611328125 44.17499923706055 191.9705505371094 41.9705810546875 C 194.1750030517578 39.76613235473633 195.9056243896484 37.19936752319336 197.1143646240234 34.34157943725586 C 198.3655853271484 31.38339424133301 199 28.24042129516602 199 25 C 199 21.75957870483398 198.3655853271484 18.61660575866699 197.1143646240234 15.65842056274414 C 195.9056243896484 12.80063247680664 194.1750030517578 10.23386764526367 191.9705505371094 8.029422760009766 C 189.76611328125 5.825000762939453 187.1993408203125 4.094367980957031 184.3415832519531 2.885631561279297 C 181.3833618164062 1.634422302246094 178.2404174804688 1 175 1 L 25 1 M 25 0 L 175 0 C 188.8070983886719 0 200 11.19286727905273 200 25 C 200 38.80713272094727 188.8070983886719 50 175 50 L 25 50 C 11.19290161132812 50 0 38.80713272094727 0 25 C 0 11.19286727905273 11.19290161132812 0 25 0 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h8cja =
    '<svg viewBox="190.0 -79.0 360.0 56.0" ><path transform="translate(190.0, -79.0)" d="M 0 0 L 360 0 L 360 56 L 0 56 L 0 0 Z" fill="#e18721" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_uyx2 =
    '<svg viewBox="211.0 -57.0 18.0 12.0" ><path transform="translate(211.0, -57.0)" d="M 18 11.99970054626465 L 17.99900054931641 11.99970054626465 L 0 11.99970054626465 L 0 9.999899864196777 L 18 9.999899864196777 L 18 11.99870014190674 L 18 11.99970054626465 Z M 18 7.000200271606445 L 17.99900054931641 7.000200271606445 L 0 7.000200271606445 L 0 5.000400066375732 L 18 5.000400066375732 L 18 6.999199867248535 L 18 7.000200271606445 Z M 18 1.999800086021423 L 17.99900054931641 1.999800086021423 L 0 1.999800086021423 L 0 7.095336940210473e-08 L 18 7.095336940210473e-08 L 18 1.998800039291382 L 18 1.999800086021423 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
