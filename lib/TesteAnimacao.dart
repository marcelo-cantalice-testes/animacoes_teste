import 'package:flutter/material.dart';

class TesteAnimacao extends StatefulWidget {
  const TesteAnimacao({ Key? key }) : super(key: key);

  @override
  _TesteAnimacaoState createState() => _TesteAnimacaoState();
}

class _TesteAnimacaoState extends State<TesteAnimacao> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: 300,
            height: 300,
            color: Colors.purpleAccent,
            child: Image.asset('images/logo.png'),
          ),
          ElevatedButton(
              onPressed: () {
                print("Botao clciado");
                setState(() {});
              },
              child: Text("Alterar"))
        ],
      );
  }
}