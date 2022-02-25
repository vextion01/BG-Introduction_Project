import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class line3Button extends StatelessWidget {
  line3Button({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(),
        ),
        Pinned.fromPins(
          Pin(start: 3.0, end: 3.0),
          Pin(size: 12.0, middle: 0.5),
          child: SvgPicture.string(
            _svg_rb2c8o,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

const String _svg_rb2c8o =
    '<svg viewBox="3.0 6.0 18.0 12.0" ><path transform="translate(3.0, 6.0)" d="M 18 11.99970054626465 L 17.99900054931641 11.99970054626465 L 0 11.99970054626465 L 0 9.999899864196777 L 18 9.999899864196777 L 18 11.99870014190674 L 18 11.99970054626465 Z M 18 7.000200271606445 L 17.99900054931641 7.000200271606445 L 0 7.000200271606445 L 0 5.000400066375732 L 18 5.000400066375732 L 18 6.999199867248535 L 18 7.000200271606445 Z M 18 1.999800086021423 L 17.99900054931641 1.999800086021423 L 0 1.999800086021423 L 0 7.095336940210473e-08 L 18 7.095336940210473e-08 L 18 1.998800039291382 L 18 1.999800086021423 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
