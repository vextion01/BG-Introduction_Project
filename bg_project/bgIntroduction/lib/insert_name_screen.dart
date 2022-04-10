import 'package:bg_introducetion/info_screen.dart';
import 'package:bg_introducetion/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './mian_screen.dart';
import 'package:adobe_xd/page_link.dart';
import './search_by_name_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InsertNameScreen extends StatelessWidget {
  InsertNameScreen({
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
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/logo.png'),
                  fit: BoxFit.fill,
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
                  _svg_z8latu,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                )),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 287.0, start: 56.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => MianScreen(),
                ),
              ],
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 18.0, start: 21.0),
            Pin(size: 12.0, start: 22.0),
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
                _svg_v29w,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 299.0, end: 0.0),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 91.0, 0.0, 0.0),
                  child: Stack(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            color: const Color(0xd9ca9844),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 91.0, start: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        color: const Color(0xffe38f00),
                      ),
                      Center(
                        child: SizedBox(
                          width: 156.0,
                          height: 27.0,
                          child: Text(
                            'ค้นหาบอร์ดเกม  ',
                            style: TextStyle(
                              fontFamily: 'tahomo',
                              fontSize: 25,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 10.0, end: 10.0),
            Pin(size: 100.0, middle: 0.875),
            child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => MianScreen(),
                  ),
                ],
                child: AppBar(
                  backgroundColor: const Color(0xffe38f00),
                  actions: [
                    IconButton(
                      onPressed: () {
                        showSearch(
                          context: context,
                          delegate: CustomSearchDelegate(),
                        );
                      },
                      icon: const Icon(Icons.search),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  final CollectionReference _firebaseFirestore =
      FirebaseFirestore.instance.collection("DataBG");

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: _firebaseFirestore.snapshots().asBroadcastStream(),
        builder:
            (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshort) {
          if (!snapshort.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            if (snapshort.data!.docs
                .where((QueryDocumentSnapshot<Object?> element) =>
                    element['nameBoardGame']
                        .toString()
                        .toLowerCase()
                        .contains(query.toLowerCase()))
                .isEmpty) {
              return const Center(
                child: Text("No search query found"),
              );
            } else {
              return ListView(children: [
                ...snapshort.data!.docs
                    .where((QueryDocumentSnapshot<Object?> element) =>
                        element['nameBoardGame']
                            .toString()
                            .toLowerCase()
                            .contains(query.toLowerCase()))
                    .map((QueryDocumentSnapshot<Object?> data) {
                  final String nameBG = data.get('nameBoardGame');
                  final String image = data['boardgameimages'];
                  final String name = data['typeBoardGame'];

                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Resultinfo(
                                    data: data,
                                  )));
                    },
                    title: Text(nameBG),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(image),
                    ),
                    subtitle: Text(name),
                  );
                })
              ]);
            }
          }
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Center(
      child: Text("Search anything here"),
    );
  }
}

const String _svg_z8latu =
    '<svg viewBox="0.0 0.0 360.0 56.0" ><path  d="M 0 0 L 360 0 L 360 56 L 0 56 L 0 0 Z" fill="#e18721" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_v29w =
    '<svg viewBox="21.0 22.0 18.0 12.0" ><path transform="translate(21.0, 22.0)" d="M 18 11.99970054626465 L 17.99900054931641 11.99970054626465 L 0 11.99970054626465 L 0 9.999899864196777 L 18 9.999899864196777 L 18 11.99870014190674 L 18 11.99970054626465 Z M 18 7.000200271606445 L 17.99900054931641 7.000200271606445 L 0 7.000200271606445 L 0 5.000400066375732 L 18 5.000400066375732 L 18 6.999199867248535 L 18 7.000200271606445 Z M 18 1.999800086021423 L 17.99900054931641 1.999800086021423 L 0 1.999800086021423 L 0 7.095336940210473e-08 L 18 7.095336940210473e-08 L 18 1.998800039291382 L 18 1.999800086021423 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_uor7i4 =
    '<svg viewBox="80.0 371.0 200.0 50.0" ><path transform="translate(80.0, 371.0)" d="M 25 0 L 175 0 C 188.8071136474609 0 200 11.19288063049316 200 25 C 200 38.80712127685547 188.8071136474609 50 175 50 L 25 50 C 11.19288063049316 50 0 38.80712127685547 0 25 C 0 11.19288063049316 11.19288063049316 0 25 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cufs1w =
    '<svg viewBox="80.0 371.0 200.0 50.0" ><path transform="translate(80.0, 371.0)" d="M 25 1 C 21.75958251953125 1 18.61663818359375 1.634422302246094 15.65841674804688 2.885631561279297 C 12.8006591796875 4.094367980957031 10.23390197753906 5.825000762939453 8.029449462890625 8.029422760009766 C 5.824996948242188 10.23386764526367 4.094375610351562 12.80063247680664 2.885635375976562 15.65842056274414 C 1.634414672851562 18.61660575866699 1 21.75957870483398 1 25 C 1 28.24042129516602 1.634414672851562 31.38339424133301 2.885635375976562 34.34157943725586 C 4.094375610351562 37.19936752319336 5.824996948242188 39.76613235473633 8.029449462890625 41.9705810546875 C 10.23390197753906 44.17499923706055 12.8006591796875 45.90563201904297 15.65841674804688 47.1143684387207 C 18.61663818359375 48.36557769775391 21.75958251953125 49 25 49 L 175 49 C 178.2404174804688 49 181.3833618164062 48.36557769775391 184.3415832519531 47.1143684387207 C 187.1993408203125 45.90563201904297 189.76611328125 44.17499923706055 191.9705505371094 41.9705810546875 C 194.1750030517578 39.76613235473633 195.9056243896484 37.19936752319336 197.1143646240234 34.34157943725586 C 198.3655853271484 31.38339424133301 199 28.24042129516602 199 25 C 199 21.75957870483398 198.3655853271484 18.61660575866699 197.1143646240234 15.65842056274414 C 195.9056243896484 12.80063247680664 194.1750030517578 10.23386764526367 191.9705505371094 8.029422760009766 C 189.76611328125 5.825000762939453 187.1993408203125 4.094367980957031 184.3415832519531 2.885631561279297 C 181.3833618164062 1.634422302246094 178.2404174804688 1 175 1 L 25 1 M 25 0 L 175 0 C 188.8070983886719 0 200 11.19286727905273 200 25 C 200 38.80713272094727 188.8070983886719 50 175 50 L 25 50 C 11.19290161132812 50 0 38.80713272094727 0 25 C 0 11.19286727905273 11.19290161132812 0 25 0 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hvzkpc =
    '<svg viewBox="0.0 0.0 30.2 23.5" ><path transform="translate(0.0, -2.25)" d="M 14.70606136322021 8.349114418029785 L 5.035243988037109 16.31414985656738 L 5.035243988037109 24.91072273254395 C 5.035243988037109 25.37422752380371 5.410990238189697 25.74997520446777 5.874496936798096 25.74997520446777 L 11.75241470336914 25.73476600646973 C 12.21428298950195 25.73245811462402 12.587477684021 25.35738372802734 12.5874719619751 24.89551162719727 L 12.5874719619751 19.87520599365234 C 12.5874719619751 19.41169929504395 12.96321773529053 19.03595161437988 13.42672443389893 19.03595161437988 L 16.78373718261719 19.03595161437988 C 17.24724388122559 19.03595161437988 17.62298965454102 19.41169929504395 17.62298965454102 19.87520599365234 L 17.62298965454102 24.89183807373047 C 17.62229347229004 25.11487579345703 17.71040534973145 25.32901763916016 17.86787223815918 25.48697853088379 C 18.02533912658691 25.64493560791016 18.23920440673828 25.73371505737305 18.46224403381348 25.73371505737305 L 24.33806228637695 25.74997520446777 C 24.80156707763672 25.74997520446777 25.17731475830078 25.37422752380371 25.17731475830078 24.91072273254395 L 25.17731475830078 16.30838012695312 L 15.50859642028809 8.349114418029785 C 15.27439022064209 8.160331726074219 14.94026851654053 8.160331726074219 14.70606136322021 8.349114418029785 Z M 29.9820384979248 13.76282024383545 L 25.59694290161133 10.1482629776001 L 25.59694290161133 2.882955312728882 C 25.59694290161133 2.535325288772583 25.31513404846191 2.253515720367432 24.96750259399414 2.253515720367432 L 22.03011703491211 2.253515720367432 C 21.68248748779297 2.253515720367432 21.40067672729492 2.535325527191162 21.40067672729492 2.882955551147461 L 21.40067672729492 6.691589832305908 L 16.70453262329102 2.827879190444946 C 15.77509880065918 2.06304931640625 14.4343147277832 2.06304931640625 13.50488090515137 2.827879190444946 L 0.2273737788200378 13.76282024383545 C -0.0406898558139801 13.98438262939453 -0.07827230542898178 14.38135051727295 0.143448680639267 14.64928340911865 L 1.481007933616638 16.27533531188965 C 1.5871901512146 16.40444755554199 1.740371227264404 16.48601913452148 1.906767010688782 16.5020580291748 C 2.07316255569458 16.51809692382812 2.239104270935059 16.46728706359863 2.367993354797363 16.3608341217041 L 14.70606136322021 6.19852876663208 C 14.94026851654053 6.009747505187988 15.27439022064209 6.009747505187988 15.5085973739624 6.198529720306396 L 27.84718894958496 16.3608341217041 C 28.11512184143066 16.58255386352539 28.5120906829834 16.54496955871582 28.73365020751953 16.27690887451172 L 30.07121086120605 14.65085506439209 C 30.17757415771484 14.52144336700439 30.22796440124512 14.3549747467041 30.21122741699219 14.1883020401001 C 30.19449234008789 14.02162742614746 30.11201095581055 13.86850070953369 29.9820442199707 13.76282024383545 Z" fill="#f1f1f1" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
