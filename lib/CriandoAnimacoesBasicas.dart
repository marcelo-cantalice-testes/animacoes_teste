// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class CriandoAnimacoesBasicas extends StatefulWidget {
  const CriandoAnimacoesBasicas({Key? key}) : super(key: key);

  @override
  _CriandoAnimacoesBasicasState createState() =>
      _CriandoAnimacoesBasicasState();
}

class _CriandoAnimacoesBasicasState extends State<CriandoAnimacoesBasicas> {
  bool _status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(("Meu App")),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _status = !_status;
          });
        },
        child: AnimatedContainer(
          duration: Duration(microseconds: 300),
          curve: Curves.linear,
          alignment: Alignment.center,
          width: _status ? 60 : 160,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(30)),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: AnimatedOpacity(
                  opacity: _status ? 1 : 0,
                  duration: Duration(milliseconds: 100),
                  child: Icon(
                    Icons.person_add,
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: AnimatedOpacity(
                  opacity: _status ? 0 : 1,
                  duration: Duration(milliseconds: 100),
                  child: Text(
                    "Mensagem",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),

      /*  body: AnimatedContainer(
        duration: Duration(seconds: 1),
        color: Colors.green,
        padding: EdgeInsets.only(bottom: 100, top: 20),
        alignment: _status ? Alignment.bottomCenter : Alignment.topCenter,
        child: AnimatedOpacity(
          opacity: _status ? 1 : 0,
          duration: Duration(seconds: 1),
          child: Container(
            height: 50,
            child: Icon(
              Icons.airplanemode_active,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
      ),*/
      /*
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        color: Colors.green,
        height: _status ? 0 : 100,
      ),*/
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            _status = !_status;
          });
        },
      ),
    );
  }
}
