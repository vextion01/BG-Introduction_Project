import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './mian_screen.dart';
import 'package:adobe_xd/page_link.dart';
import './search_byatt_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InsertAttScreen extends StatelessWidget {
  InsertAttScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe8b154),
      body: Stack(
        children: <Widget>[
          Container(
            child: dropdown(),
          ),
          Pinned.fromPins(
            Pin(size: 40.5, end: 14.7),
            Pin(size: 31.5, end: 15.5),
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
                _svg_jhb8l0,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
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
                    Stack(
                      children: <Widget>[
                        Container(
                          color: const Color(0xffe18721),
                        ),
                        Transform.translate(
                          offset: Offset(68.0, 28.0),
                          child: Text(
                            'ค้นหาบอร์ดเกมด้วยคุณลักษณะ',
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

class dropdown extends StatefulWidget {
  const dropdown({Key? key}) : super(key: key);

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  String? dropdownValue;
  String? dropdownValue2;
  String? dropdownValue3;

  void _addGroup() {
    setState(() {
      List group = [dropdownValue, dropdownValue2, dropdownValue3];
      print(group);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          color: Color.fromARGB(217, 223, 159, 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: DropdownButton<String>(
                  borderRadius: BorderRadius.circular(30),
                  dropdownColor: Colors.white,
                  hint: Text("จำนวนผู้เล่น"),
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  elevation: 16,
                  isExpanded: true,
                  underline: SizedBox(),
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['2-4', '5-7', '8 คนขี้นไป']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 200,
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: DropdownButton<String>(
                  borderRadius: BorderRadius.circular(20),
                  dropdownColor: Colors.white,
                  hint: Text("เวลาที่เล่น"),
                  value: dropdownValue2,
                  icon: const Icon(Icons.arrow_drop_down),
                  elevation: 16,
                  isExpanded: true,
                  underline: SizedBox(),
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue2 = newValue!;
                    });
                  },
                  items: <String>['5-15', '20-30', '45-60', '60+']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 200,
                padding: const EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: DropdownButton<String>(
                  borderRadius: BorderRadius.circular(20),
                  dropdownColor: Colors.white,
                  hint: Text("ประเภทเกม"),
                  value: dropdownValue3,
                  icon: const Icon(Icons.arrow_drop_down),
                  elevation: 16,
                  isExpanded: true,
                  underline: SizedBox(),
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue3 = newValue!;
                    });
                  },
                  items: <String>[
                    'Family Party',
                    "Children's Abstract",
                    'Strategy Thematic',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: 100,
                child: ElevatedButton(
                  onPressed: _addGroup,
                  child: const Text('ค้นหา'),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const String _svg_jhb8l0 =
    '<svg viewBox="304.7 593.0 40.5 31.5" ><path transform="translate(304.75, 590.75)" d="M 19.71351623535156 10.42453098297119 L 6.75 21.10148429870605 L 6.75 32.625 C 6.75 33.24631881713867 7.253679752349854 33.75 7.875 33.75 L 15.75421905517578 33.72961044311523 C 16.37334251403809 33.72651672363281 16.87360191345215 33.22373962402344 16.87359428405762 32.60461044311523 L 16.87359428405762 25.875 C 16.87359428405762 25.2536792755127 17.37727355957031 24.75 17.99859428405762 24.75 L 22.49859428405762 24.75 C 23.11991500854492 24.75 23.62359428405762 25.2536792755127 23.62359428405762 25.875 L 23.62359428405762 32.59968566894531 C 23.62265968322754 32.89866256713867 23.74077224731445 33.18571472167969 23.95185279846191 33.39745712280273 C 24.16293334960938 33.60919570922852 24.44961547851562 33.72820281982422 24.74859428405762 33.72820281982422 L 32.625 33.75 C 33.24631881713867 33.75 33.75 33.24631881713867 33.75 32.625 L 33.75 21.09375 L 20.78929710388184 10.42453098297119 C 20.47534942626953 10.17147254943848 20.0274658203125 10.17147254943848 19.71351623535156 10.42453098297119 Z M 40.19062423706055 17.68148422241211 L 34.3125 12.83625030517578 L 34.3125 3.097265720367432 C 34.3125 2.631275415420532 33.93474197387695 2.253515720367432 33.46875 2.253515720367432 L 29.53125 2.253515720367432 C 29.06525993347168 2.253515720367432 28.6875 2.631275653839111 28.6875 3.097265958786011 L 28.6875 8.202655792236328 L 22.39242172241211 3.0234375 C 21.14653778076172 1.998199701309204 19.34924697875977 1.998199701309204 18.10336112976074 3.0234375 L 0.3051562607288361 17.68148422241211 C -0.05417710542678833 17.97848320007324 -0.1045555472373962 18.51061058044434 0.1926565170288086 18.8697681427002 L 1.985625028610229 21.04945373535156 C 2.127959966659546 21.22252655029297 2.333295822143555 21.33187103271484 2.556345701217651 21.35337066650391 C 2.779395580291748 21.37487030029297 3.001836538314819 21.30676078796387 3.174609661102295 21.1640625 L 19.71351623535156 7.541718482971191 C 20.0274658203125 7.288661003112793 20.47534942626953 7.288661003112793 20.78929901123047 7.541719436645508 L 37.32890701293945 21.1640625 C 37.68806457519531 21.46127319335938 38.22019195556641 21.4108943939209 38.51718902587891 21.05156326293945 L 40.31015777587891 18.87187576293945 C 40.45273590087891 18.69840240478516 40.52028274536133 18.47525405883789 40.49784851074219 18.25183296203613 C 40.47541427612305 18.02840995788574 40.36484909057617 17.82314682006836 40.19063186645508 17.68148422241211 Z" fill="#f1f1f1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_uor7i4 =
    '<svg viewBox="80.0 371.0 200.0 50.0" ><path transform="translate(80.0, 371.0)" d="M 25 0 L 175 0 C 188.8071136474609 0 200 11.19288063049316 200 25 C 200 38.80712127685547 188.8071136474609 50 175 50 L 25 50 C 11.19288063049316 50 0 38.80712127685547 0 25 C 0 11.19288063049316 11.19288063049316 0 25 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cufs1w =
    '<svg viewBox="80.0 371.0 200.0 50.0" ><path transform="translate(80.0, 371.0)" d="M 25 1 C 21.75958251953125 1 18.61663818359375 1.634422302246094 15.65841674804688 2.885631561279297 C 12.8006591796875 4.094367980957031 10.23390197753906 5.825000762939453 8.029449462890625 8.029422760009766 C 5.824996948242188 10.23386764526367 4.094375610351562 12.80063247680664 2.885635375976562 15.65842056274414 C 1.634414672851562 18.61660575866699 1 21.75957870483398 1 25 C 1 28.24042129516602 1.634414672851562 31.38339424133301 2.885635375976562 34.34157943725586 C 4.094375610351562 37.19936752319336 5.824996948242188 39.76613235473633 8.029449462890625 41.9705810546875 C 10.23390197753906 44.17499923706055 12.8006591796875 45.90563201904297 15.65841674804688 47.1143684387207 C 18.61663818359375 48.36557769775391 21.75958251953125 49 25 49 L 175 49 C 178.2404174804688 49 181.3833618164062 48.36557769775391 184.3415832519531 47.1143684387207 C 187.1993408203125 45.90563201904297 189.76611328125 44.17499923706055 191.9705505371094 41.9705810546875 C 194.1750030517578 39.76613235473633 195.9056243896484 37.19936752319336 197.1143646240234 34.34157943725586 C 198.3655853271484 31.38339424133301 199 28.24042129516602 199 25 C 199 21.75957870483398 198.3655853271484 18.61660575866699 197.1143646240234 15.65842056274414 C 195.9056243896484 12.80063247680664 194.1750030517578 10.23386764526367 191.9705505371094 8.029422760009766 C 189.76611328125 5.825000762939453 187.1993408203125 4.094367980957031 184.3415832519531 2.885631561279297 C 181.3833618164062 1.634422302246094 178.2404174804688 1 175 1 L 25 1 M 25 0 L 175 0 C 188.8070983886719 0 200 11.19286727905273 200 25 C 200 38.80713272094727 188.8070983886719 50 175 50 L 25 50 C 11.19290161132812 50 0 38.80713272094727 0 25 C 0 11.19286727905273 11.19290161132812 0 25 0 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
