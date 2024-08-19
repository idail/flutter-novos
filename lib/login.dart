import 'dart:convert';

import "package:flutter/material.dart";
import 'package:flutternovos/botao.dart';
import 'package:flutternovos/tela.dart';
import 'package:http/http.dart' as http;
class Login extends StatefulWidget{

  LoginState createState(){
    return LoginState();
  }
}

class LoginState extends State<Login>{

  var usuariotxt = TextEditingController();
  var senhatxt = TextEditingController();

  bool visualizarsenha = true;

  Widget txtusuario()
  { 
    return  TextFormField(
      controller: usuariotxt,
      decoration: const InputDecoration(
        labelText: "Informe seu usuário",
        hintText: "Digite seu usuário",
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget txtsenha() {
    return TextFormField(
      controller: senhatxt,
      decoration: InputDecoration(
        labelText: "Informe sua senha",
        hintText: "Digite Sua Senha",
        hintStyle: const TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              visualizarsenha = !visualizarsenha;
            });
          },
          icon: visualizarsenha
              ? const Icon(Icons.visibility_off)
              : const Icon(Icons.visibility),
        ),
      ),
      obscureText: visualizarsenha,
    );
  }

  void mostrarAlerta(String titulo, String mensagem) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(titulo),
          content: Text(mensagem),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> logar(String usuario, String senha) async{

    var uri = Uri.parse(
      "https://idailneto.com.br/financas/login.php?usuario=$usuario&senha=$senha");
    var resposta = await http.get(
      uri,
        headers: {"Accept": "application/json"});

    var retorno = jsonDecode(resposta.body);
    
    if(retorno == "localizado")
    {
       Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Tela()),
        );
    }else{
      mostrarAlerta("Erro de login","Usuário ou senha incorretos");
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Minhas finanças, caso já tenha conta, logue-se"),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    txtusuario(),
                    const SizedBox(
                      height: 7.0,
                    ),
                    txtsenha(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            GestureDetector(
              onTap: () {
                logar(usuariotxt.text, senhatxt.text);
                //VerificarDados(usuariotxt.text, senhatxt.text);
              },
              child: Botao(
                "Logar"
              )
            ),
            const Divider(
              height: 35.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Não possui Cadastro?",
                  style: TextStyle(
                      color: Color(0xFFBDC2CB),
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
                const SizedBox(width: 10.0),
                GestureDetector(
                  // onTap: () {
                  //   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => CadastroUsuarioPage()
                  //   ));
                  // },
                  child: const Text(
                    "Cadastre-se",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Recuperar Senha?",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.red,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
    ],
    )
  )
  );
  }

}