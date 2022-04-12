import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './mian_screen.dart';
import 'package:adobe_xd/page_link.dart';
import './usetobe_bg_screen.dart';
import './save_data_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuOnTopScreen extends StatelessWidget {
  MenuOnTopScreen({
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
          ),
          Pinned.fromPins(
            Pin(start: 10.0, end: 9.0),
            Pin(size: 368.0, middle: 0.4191),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 206.0, start: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('assets/images/logo.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 201.0,
                    height: 127.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 1.0),
                          Pin(size: 50.0, start: 0.0),
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
                                _svg_j060w7,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              )),
                              Pinned.fromPins(
                                Pin(start: 34.0, end: 34.0),
                                Pin(size: 22.0, middle: 0.5),
                                child: Text(
                                  'ค้นหาบอร์ดเกม',
                                  style: TextStyle(
                                    fontFamily: 'tahomo',
                                    fontSize: 20,
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(start: 1.0, end: 0.0),
                          Pin(size: 50.0, end: 0.0),
                          child: Stack(
                            children: <Widget>[
                              SizedBox.expand(
                                  child: SvgPicture.string(
                                _svg_oal55e,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              )),
                              SizedBox.expand(
                                  child: SvgPicture.string(
                                _svg_kakjgs,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              )),
                              Pinned.fromPins(
                                Pin(start: 34.0, end: 34.0),
                                Pin(size: 22.0, middle: 0.5),
                                child: Text(
                                  'สุ่มบอร์ดเกม',
                                  style: TextStyle(
                                    fontFamily: 'tahomo',
                                    fontSize: 20,
                                    color: const Color(0xff000000),
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
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 56.0, 0.0, 0.0),
            child: SizedBox.expand(
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
                _svg_xfkvgp,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            )),
          ),
          Pinned.fromPins(
            Pin(size: 280.0, start: 0.0),
            Pin(size: 100.0, start: 56.0),
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
                            pageBuilder: () => UsetobeBGScreen(),
                          ),
                        ],
                        child: Stack(
                          children: <Widget>[
                            Container(
                              color: const Color(0xffd1830e),
                            ),
                            Pinned.fromPins(
                              Pin(size: 201.0, end: 36.0),
                              Pin(size: 25.0, middle: 0.52),
                              child: Text(
                                'บอร์ดเกมที่เคยดูข้อมูล      ',
                                style: TextStyle(
                                  fontFamily: 'tahomo',
                                  fontSize: 20,
                                  color: const Color(0xfffff5f5),
                                  fontWeight: FontWeight.w500,
                                ),
                                softWrap: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 20.0, start: 14.0),
                        Pin(size: 20.0, middle: 0.5),
                        child: SvgPicture.string(
                          _svg_eqlrch,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 50.0, start: 0.0),
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
                        Stack(
                          children: <Widget>[
                            Container(
                              color: const Color(0xffd1830e),
                            ),
                            Align(
                              alignment: Alignment(-0.323, 0.04),
                              child: SizedBox(
                                width: 153.0,
                                height: 25.0,
                                child: Text(
                                  'บอร์ดเกมที่บันทึกไว้',
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
                        Pinned.fromPins(
                          Pin(size: 15.0, start: 17.0),
                          Pin(size: 20.0, middle: 0.5),
                          child: SvgPicture.string(
                            _svg_urp6m8,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
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
const String _svg_ne1p2k =
    '<svg viewBox="80.0 368.0 200.0 50.0" ><path transform="translate(80.0, 368.0)" d="M 25 0 L 175 0 C 188.8071136474609 0 200 11.19288063049316 200 25 C 200 38.80712127685547 188.8071136474609 50 175 50 L 25 50 C 11.19288063049316 50 0 38.80712127685547 0 25 C 0 11.19288063049316 11.19288063049316 0 25 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_j060w7 =
    '<svg viewBox="80.0 368.0 200.0 50.0" ><path transform="translate(80.0, 368.0)" d="M 25 1 C 21.75958251953125 1 18.61663818359375 1.634422302246094 15.65841674804688 2.885631561279297 C 12.8006591796875 4.094367980957031 10.23390197753906 5.825000762939453 8.029449462890625 8.029422760009766 C 5.824996948242188 10.23386764526367 4.094375610351562 12.80063247680664 2.885635375976562 15.65842056274414 C 1.634414672851562 18.61660575866699 1 21.75957870483398 1 25 C 1 28.24042129516602 1.634414672851562 31.38339424133301 2.885635375976562 34.34157943725586 C 4.094375610351562 37.19936752319336 5.824996948242188 39.76613235473633 8.029449462890625 41.9705810546875 C 10.23390197753906 44.17499923706055 12.8006591796875 45.90563201904297 15.65841674804688 47.1143684387207 C 18.61663818359375 48.36557769775391 21.75958251953125 49 25 49 L 175 49 C 178.2404174804688 49 181.3833618164062 48.36557769775391 184.3415832519531 47.1143684387207 C 187.1993408203125 45.90563201904297 189.76611328125 44.17499923706055 191.9705505371094 41.9705810546875 C 194.1750030517578 39.76613235473633 195.9056243896484 37.19936752319336 197.1143646240234 34.34157943725586 C 198.3655853271484 31.38339424133301 199 28.24042129516602 199 25 C 199 21.75957870483398 198.3655853271484 18.61660575866699 197.1143646240234 15.65842056274414 C 195.9056243896484 12.80063247680664 194.1750030517578 10.23386764526367 191.9705505371094 8.029422760009766 C 189.76611328125 5.825000762939453 187.1993408203125 4.094367980957031 184.3415832519531 2.885631561279297 C 181.3833618164062 1.634422302246094 178.2404174804688 1 175 1 L 25 1 M 25 0 L 175 0 C 188.8070983886719 0 200 11.19286727905273 200 25 C 200 38.80713272094727 188.8070983886719 50 175 50 L 25 50 C 11.19290161132812 50 0 38.80713272094727 0 25 C 0 11.19286727905273 11.19290161132812 0 25 0 Z" fill="#707070" stroke="#ff2d00" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_oal55e =
    '<svg viewBox="82.0 444.0 200.0 50.0" ><path transform="translate(82.0, 444.0)" d="M 25 0 L 175 0 C 188.8071136474609 0 200 11.19288063049316 200 25 C 200 38.80712127685547 188.8071136474609 50 175 50 L 25 50 C 11.19288063049316 50 0 38.80712127685547 0 25 C 0 11.19288063049316 11.19288063049316 0 25 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kakjgs =
    '<svg viewBox="82.0 444.0 200.0 50.0" ><path transform="translate(82.0, 444.0)" d="M 25 1 C 21.75958251953125 1 18.61663818359375 1.634422302246094 15.65841674804688 2.885631561279297 C 12.8006591796875 4.094367980957031 10.23390197753906 5.825000762939453 8.029449462890625 8.029422760009766 C 5.824996948242188 10.23386764526367 4.094375610351562 12.80063247680664 2.885635375976562 15.65842056274414 C 1.634414672851562 18.61660575866699 1 21.75957870483398 1 25 C 1 28.24042129516602 1.634414672851562 31.38339424133301 2.885635375976562 34.34157943725586 C 4.094375610351562 37.19936752319336 5.824996948242188 39.76613235473633 8.029449462890625 41.9705810546875 C 10.23390197753906 44.17499923706055 12.8006591796875 45.90563201904297 15.65841674804688 47.1143684387207 C 18.61663818359375 48.36557769775391 21.75958251953125 49 25 49 L 175 49 C 178.2404174804688 49 181.3833618164062 48.36557769775391 184.3415832519531 47.1143684387207 C 187.1993408203125 45.90563201904297 189.76611328125 44.17499923706055 191.9705505371094 41.9705810546875 C 194.1750030517578 39.76613235473633 195.9056243896484 37.19936752319336 197.1143646240234 34.34157943725586 C 198.3655853271484 31.38339424133301 199 28.24042129516602 199 25 C 199 21.75957870483398 198.3655853271484 18.61660575866699 197.1143646240234 15.65842056274414 C 195.9056243896484 12.80063247680664 194.1750030517578 10.23386764526367 191.9705505371094 8.029422760009766 C 189.76611328125 5.825000762939453 187.1993408203125 4.094367980957031 184.3415832519531 2.885631561279297 C 181.3833618164062 1.634422302246094 178.2404174804688 1 175 1 L 25 1 M 25 0 L 175 0 C 188.8070983886719 0 200 11.19286727905273 200 25 C 200 38.80713272094727 188.8070983886719 50 175 50 L 25 50 C 11.19290161132812 50 0 38.80713272094727 0 25 C 0 11.19286727905273 11.19290161132812 0 25 0 Z" fill="#707070" stroke="#001fff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_eqlrch =
    '<svg viewBox="14.0 121.0 20.0 20.0" ><path transform="translate(13.44, 120.44)" d="M 20.5624828338623 10.54360675811768 C 20.57268333435059 16.05329513549805 16.07942199707031 20.55862617492676 10.56974983215332 20.56249809265137 C 8.190114974975586 20.5641918182373 6.004310131072998 19.73467445373535 4.28661060333252 18.34834098815918 C 3.839957714080811 17.98785591125488 3.806570529937744 17.31846046447754 4.212457180023193 16.91257095336914 L 4.666771411895752 16.45825576782227 C 5.013908386230469 16.11111831665039 5.568101406097412 16.07313346862793 5.95269775390625 16.37825584411621 C 7.218219757080078 17.38249206542969 8.819791793823242 17.98188781738281 10.56249141693115 17.98188781738281 C 14.66349601745605 17.98188781738281 17.98183822631836 14.6628885269165 17.98183822631836 10.56251811981201 C 17.98183822631836 6.461502552032471 14.66284942626953 3.143149852752686 10.56249141693115 3.143149852752686 C 8.594186782836914 3.143149852752686 6.806486129760742 3.908030271530151 5.479108333587646 5.156540393829346 L 7.525638580322266 7.203076362609863 C 7.932090759277344 7.609528541564941 7.644227504730225 8.304449081420898 7.069470405578613 8.304449081420898 L 1.207660675048828 8.304449081420898 C 0.8513305187225342 8.304449081420898 0.5625 8.015618324279785 0.5625 7.659286975860596 L 0.5625 1.797461867332458 C 0.5625 1.222702860832214 1.257418870925903 0.9348394274711609 1.663870096206665 1.341251373291016 L 3.654674530029297 3.332061529159546 C 5.449954986572266 1.61637282371521 7.883138656616211 0.5625 10.56249141693115 0.5625 C 16.07901763916016 0.5625 20.55228042602539 5.029443740844727 20.5624828338623 10.54360675811768 Z M 13.26764965057373 13.72038650512695 L 13.66373825073242 13.2111120223999 C 13.99188232421875 12.78921604156494 13.91587448120117 12.18119049072266 13.49398040771484 11.85308456420898 L 11.85281276702881 10.57659149169922 L 11.85281276702881 6.368962287902832 C 11.85281276702881 5.834485054016113 11.41954612731934 5.401218414306641 10.88507080078125 5.401218414306641 L 10.23991107940674 5.401218414306641 C 9.705436706542969 5.401218414306641 9.272170066833496 5.834485054016113 9.272170066833496 6.368962287902832 L 9.272170066833496 11.83876991271973 L 11.90962791442871 13.89014434814453 C 12.33152198791504 14.21824932098389 12.9395055770874 14.14228248596191 13.26765060424805 13.72038650512695 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_urp6m8 =
    '<svg viewBox="17.0 15.0 15.0 20.0" ><path transform="translate(17.0, 15.0)" d="M 0 20 L 0 1.875 C 0 0.8394531607627869 0.8394531011581421 0 1.875 0 L 13.125 0 C 14.16054725646973 0 15 0.8394531607627869 15 1.875 L 15 20 L 7.5 15.625 L 0 20 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xfkvgp =
    '<svg viewBox="0.0 56.0 360.0 584.0" ><path transform="translate(0.0, 56.0)" d="M 0 0 L 360 0 L 360 584 L 0 584 L 0 0 Z" fill="#a59f9f" fill-opacity="0.41" stroke="#707070" stroke-width="1" stroke-opacity="0.41" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
