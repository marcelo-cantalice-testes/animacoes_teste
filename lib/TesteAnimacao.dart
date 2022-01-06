// ignore_for_file: avoid_print, prefer_const_constructors, file_names, unused_field, prefer_final_fields

import 'package:flutter/material.dart';
//Testando
class TesteAnimacao extends StatefulWidget {
  const TesteAnimacao({ Key? key }) : super(key: key);

  @override
  _TesteAnimacaoState createState() => _TesteAnimacaoState();
}

class _TesteAnimacaoState extends State<TesteAnimacao> {
  bool _status= true;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            padding: EdgeInsets.all(20),
            width: _status ? 100 : 500,
            height: _status ? 300 : 200,
            color: _status ? Colors.purpleAccent : Colors.red,
            child: Image.asset('images/logo.png'),
            duration: Duration(seconds: 2),
            
            
          ),
          ElevatedButton(
              onPressed: () {
                
                setState(() {
                   _status=!_status;
                });
                print("Status: "+_status.toString());
              },
              child: Text("Alterar"))
        ],
      );
  }
}