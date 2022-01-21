// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace

import 'dart:ffi';

import 'package:flutter/material.dart';

class AnimacaoTweenState extends StatefulWidget {
  const AnimacaoTweenState({Key? key}) : super(key: key);

  @override
  _AnimacaoTweenStateState createState() => _AnimacaoTweenStateState();
}

class _AnimacaoTweenStateState extends State<AnimacaoTweenState> {
  static final colorTween = ColorTween(begin: Colors.white, end: Colors.orange);

  _teste(BuildContext context, double angulo, Widget? widget) {
    return Transform.rotate(
      angle: angulo,
      child: Image.asset("images/logo.png"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder(
        tween: colorTween,
        duration: Duration(seconds: 2),
        builder: (context, Color? color, child) {
          return ColorFiltered(
            colorFilter: ColorFilter.mode(Color(color!.value), BlendMode.overlay),
            child: Image.asset("images/estrelas.jpg"),
            );
        },
      ),
    );

    /* 
TweenAnimationBuilder<double>(
          tween: Tween(begin: 50, end: 180),
          duration: Duration(seconds: 2),
          builder: (BuildContext context, double largura, Widget? widget) {
            return Container(
              color: Colors.green,
              width: largura,
              height: 60,
            );
          }),
    ------------------------------------------------------------------
  child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 0.0, end: 6.28),
          duration: Duration(seconds: 2),
          builder: (BuildContext context, double double, Widget? widget) {
            return Transform.rotate(
              angle: double,
              child: Image.asset("images/logo.png"),
            );
          })
   */

    /*
          Transform.rotate(
        angle: 6.28,
        child: Image.asset("images/logo.png"),
        );
      */
  }
}
