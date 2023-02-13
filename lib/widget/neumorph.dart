import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

//outer shadow
BoxDecoration neumorph1 = BoxDecoration(
    color: const Color(0xffF4F4F4),
    borderRadius: BorderRadius.circular(20),
    boxShadow: const [
      BoxShadow(
        color: Color(0x33DCDCDC),
        offset: Offset(-5, 5),
        blurRadius: 10,
        spreadRadius: 0,
      ),
      BoxShadow(
        color: Color(0x33DCDCDC),
        offset: Offset(5, -5),
        blurRadius: 10,
        spreadRadius: 0,
      ),
      BoxShadow(
        color: Color(0xe6FFFFFF),
        offset: Offset(-5, -5),
        blurRadius: 10,
        spreadRadius: 0,
      ),
      BoxShadow(
        color: Color(0xe6DCDCDC),
        offset: Offset(5, 5),
        blurRadius: 13,
        spreadRadius: 0,
      ),
    ]);

//inner shadow
BoxDecoration neumorph2 = BoxDecoration(
    color: const Color(0xffF9F9F9),
    borderRadius: BorderRadius.circular(15),
    boxShadow: const [
      // BoxShadow(
      //   color: Color(0x4dFFFFFF),
      //   offset: Offset(1, 1),
      //   blurRadius: 2,
      //   spreadRadius: 0,
      // ),
      // BoxShadow(
      //   color: Color(0x4dD8D8D8),
      //   offset: Offset(-1, -1),
      //   blurRadius: 2,
      //   spreadRadius: 0,
      // ),
      BoxShadow(
        color: Color(0x33D8D8D8),
        offset: Offset(-10, 5),
        blurRadius: 10,
        spreadRadius: 0,
        inset: true,
      ),
      BoxShadow(
        color: Color(0x33D8D8D8),
        offset: Offset(5, -5),
        blurRadius: 10,
        spreadRadius: 0,
        inset: true,
      ),
      BoxShadow(
        color: Color(0xe6FFFFFF),
        offset: Offset(-5, -5),
        blurRadius: 10,
        spreadRadius: 0,
        inset: true,
      ),
      BoxShadow(
        color: Color(0xe6D8D8D8),
        offset: Offset(5, 5),
        blurRadius: 13,
        spreadRadius: 0,
        inset: true,
      ),
    ]);
