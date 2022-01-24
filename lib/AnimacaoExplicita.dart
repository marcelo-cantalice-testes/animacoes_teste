// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class AnimacaoExplicita extends StatefulWidget {
  const AnimacaoExplicita({ Key? key }) : super(key: key);

  @override
  _AnimacaoExplicitaState createState() => _AnimacaoExplicitaState();
}

class _AnimacaoExplicitaState extends State<AnimacaoExplicita> with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late AnimationStatus _animationStatus;
  _efeitosLogo(){
    print("Botao pressionasdo");
    if(_animationStatus == AnimationStatus.dismissed){
      _animationController.forward();
    }else{
      _animationController.reverse();
    }
    /*
    if(_animationController.isAnimating){
      _animationController.stop();
    }else{
      _animationController.repeat();
    }*/
  }

  @override
  void initState() {
    super.initState();
    _animationStatus =AnimationStatus.dismissed;
   _animationController = AnimationController( //controlador da animacao PS: necessita do  with SingleTickerProviderStateMixin
     duration: Duration(seconds: 5),
     vsync: this
   )
   //..repeat();//repete de forma indefinida
   ..repeat()
   ..addStatusListener((status) {
     _animationStatus= status;

    }); //permite monitorar o status da animacao
  }
  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: 300,
              height: 400,
              child: RotationTransition(
                turns: _animationController,
                child: Image.asset("images/logo.png"),
                alignment: Alignment.center,
                ),
            ),
            ElevatedButton(
              onPressed: _efeitosLogo, 
              child: Text("Pressione")
              )
          ],
        ),
      ),
    );
  }
}