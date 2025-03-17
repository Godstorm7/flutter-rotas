import 'package:flutter/material.dart';
import 'package:flutter_rotas/model/contato.model.dart';

class ContatoPage extends StatelessWidget {

  late Contato contato;


  ContatoPage({super.key, required this.contato});

  @override
  Widget build(BuildContext context) {

    TextEditingController _controllerNome = TextEditingController(text: contato.nome);

    TextEditingController _controllerTelefone = TextEditingController(text: contato.telefone);
    return SafeArea(
      //
      child: Scaffold(
        appBar: AppBar(
          title: Text("${contato.nome}"),
          backgroundColor: Colors.green,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          //
          child: Column(
            //
            children: [
              //
              Image.network(contato.foto, height: 150,),
              //
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: TextField(
                  controller: _controllerNome,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              //
              SizedBox(height: 20,),
              //
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: TextField(
                  controller: _controllerTelefone,
                  enabled: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              )
              //
            ],
            ),
        ),
      )
      //
      );
  }
}