import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Sou, em minha linha de trabalho, uma pessoa conhecida; eu diria até muito conhecida. Meus talentos, na realidade, são inigualáveis.",
    "Meu passatempo é saber das coisas",
    "Se o senhor fosse um homem de excelente caráter, de moralidade impecável, que não fizesse nada que não devesse fazer... e possivelmente fizesse tudo o que deveria... eh bien! Aí eu teria sérias dúvidas a respeito do seu sucesso.",
    "É preciso terminar um amor antigo antes de começar um novo.",
    "É uma profunda crença minha que, se você conseguir induzir qualquer pessoa a falar com você por tempo suficiente sobre qualquer assunto, cedo ou tarde ela se entregará.",
    "Ele é um homem que coleciona segredos... e os usa em proveito próprio.",
    "Foram as duas mulheres que amavam e incondicionalmente que elaboraram um plano quase inteligente o bastante para enganar a mim, Hercule Poirot... Mas não o suficiente.",
    "De uma frase inocente pode sair uma iluminação.",
    "Não há nada perigoso para alguém com algo a esconder quanto uma conversa.",
    "Conversar leva a um monte de caminhos, de uma maneira ou outra.",
    "Elefantes sempre se lembram.",
    "De uma mentira descubro a verdade."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";
  void _gerarFrase(){

    // 0, 1 , 2, 3
    var numeroSorteado = Random().nextInt( _frases.length );

    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("As Doze Frases de Hércules"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.red)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/detetive.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              ElevatedButton(
                onPressed: _gerarFrase,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.red, // foreground color
                  shadowColor: Colors.black, // elevation color
                  elevation: 5, // elevation of button
                ),
                child: const Text('Quero ler mais uma'),
              ),
              /*child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.green,
                onPressed: _gerarFrase,
              )*/
            ],
          ),
        ),
      ),
    );
  }
}