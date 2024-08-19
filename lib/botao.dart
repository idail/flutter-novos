import 'package:flutter/material.dart';

class Botao extends StatelessWidget{
  final String textobotao;

  Botao(this.textobotao);

  Widget build(BuildContext contexto)
  {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(color:Colors.blue,borderRadius: BorderRadius.circular(10.0)),
      child:Center(
        child:Text(
          textobotao,
          style: TextStyle(color:Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}