import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ElementsSystemBarPrimary extends StatelessWidget {
  ElementsSystemBarPrimary({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: const Color(0xff000000),
        ),
        Container(
          color: const Color(0xff000000),
        ),
        Pinned.fromPins(
          Pin(size: 46.0, end: 8.0),
          Pin(size: 10.0, middle: 0.5),
          child: SvgPicture.string(
            _svg_claqaz,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

const String _svg_claqaz =
    '<svg viewBox="306.0 7.0 46.0 10.0" ><path transform="translate(306.0, 7.0)" d="M 34.00020217895508 0 L 45.99990081787109 0 L 39.99959945678711 9.999899864196777 L 34.00020217895508 0 Z M 18 5.000400066375732 C 18 2.238300085067749 20.23830032348633 0 23.00040054321289 0 C 25.76160049438477 0 27.99990081787109 2.238300085067749 27.99990081787109 5.000400066375732 C 27.99990081787109 7.761600017547607 25.76160049438477 9.999899864196777 23.00040054321289 9.999899864196777 C 20.23830032348633 9.999899864196777 18 7.761600017547607 18 5.000400066375732 Z M 0 9.999899864196777 L 0 0 L 9.999899864196777 0 L 9.999899864196777 9.999899864196777 L 0 9.999899864196777 Z" fill="#ffffff" fill-opacity="0.38" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
