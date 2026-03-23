import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: TelaProduto(),
    );
  }
}

class TelaProduto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Produto")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Imagem(),
            SizedBox(height: 10),
            Description(),
            Buttons(),
            MainText(),
          ],
        ),
      ),
    );
  }
}

class Imagem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Image.network(
        "data:image/webp;base64,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",
        fit: BoxFit.contain,
        alignment: Alignment.center,
      ),
    );
  }
}

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 50, child: Text("PS5")),

        Icon(Icons.attach_money),
        SizedBox(width: 50, child: Text("RS2500")),
      ],
    );
  }
}

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 50, child: Icon(Icons.share)),
          SizedBox(width: 50, child: Icon(Icons.chat_bubble)),
          SizedBox(width: 50, child: Icon(Icons.favorite)),
        ],
      ),
    );
  }
}

class MainText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              "Esse é o PS5, o mais novo console da Sony, tá caro mas vale muito a pena para quem busca desempenho de nova geração. Com gráficos incríveis, carregamento ultrarrápido graças ao SSD e suporte a tecnologias modernas, ele proporciona uma experiência imersiva. Aventure-se agora para testar novos jogos e lançamentos, explorar mundos abertos detalhados e experimente o PlayStation Plus, que oferece acesso a diversos jogos mensalmente.",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
