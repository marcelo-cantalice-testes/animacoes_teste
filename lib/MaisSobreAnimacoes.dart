import 'package:flutter/material.dart';

class MaisSobreAnimacoes extends StatefulWidget {
  const MaisSobreAnimacoes({ Key? key }) : super(key: key);

  @override
  _MaisSobreAnimacoesState createState() => _MaisSobreAnimacoesState();
}

class _MaisSobreAnimacoesState extends State<MaisSobreAnimacoes> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  late Animation _animation;
  late Animation _animationTranslate;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animationTranslate = Tween<Offset>(
      begin: Offset(0,0),
      end: Offset(60,60)
    ).animate(_animationController);
    _animation = Tween<double>(
      begin: 0,
      end: 6
    ).animate(_animationController);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    _animationController.forward();
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: AnimatedBuilder(
        animation: _animation,
        child:  Stack(children: [Positioned(child: Image.asset("images/logo.png"), width: 180, height: 180,left: 0, top: 0,)],),  //Image.asset("images/logo.png"),
        builder: (context, child) {
          return Transform.translate(
            offset: _animationTranslate.value,
            child: child,
            );

            /*
            Transform.rotate(
            angle: _animation.value,
            child: child,
            );

            Transform.scale(
            scale: _animation.value,
            child: child,
            );
             */
        },
        ),
    );
  }
}