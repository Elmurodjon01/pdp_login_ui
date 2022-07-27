import 'package:flutter/material.dart';

import '../constants.dart';


class ReusableSNS extends StatelessWidget {
  String whatSocialMedia;
  Color whichColor;
  ReusableSNS({
    required this.whatSocialMedia,
    required this.whichColor,
});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          color: whichColor,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child:  Center(
          child: Text(whatSocialMedia, style: reusablesnss,),
        ),
      ),
    );
  }
}
