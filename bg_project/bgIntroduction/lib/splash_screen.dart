import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './mian_screen.dart';
import 'package:adobe_xd/page_link.dart';

class SplashScreen extends StatelessWidget {
  final ImageProvider logo;
  const SplashScreen({
    Key? key,
    this.logo = const AssetImage('assets/images/logo.png'),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe8b154),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 10.0, end: 9.0),
            Pin(size: 206.0, middle: 0.3088),
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
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: logo,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          PageLink(
            links: [
              PageLinkInfo(
                transition: LinkTransition.Fade,
                ease: Curves.easeOut,
                duration: 0.3,
                pageBuilder: () => MianScreen(),
              ),
            ],
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(width: 1.0, color: Colors.transparent),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
