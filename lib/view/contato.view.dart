import 'package:flutter/material.dart';
import 'package:flutter_rotas/model/contato.model.dart';

class ContatoView extends StatelessWidget {

  late Contato contato;


  ContatoView({super.key, required this.contato});

  @override
  Widget build(BuildContext context) {

    TextEditingController _controllerNome = TextEditingController(text: contato.nome);

    TextEditingController _controllerTelefone = TextEditingController(text: contato.telefone);
    return SafeArea(
      //
      child: Scaffold(
        appBar: AppBar(
          title: Text("Contato: ${contato.nome}"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          //
          child: Column(
            //
            children: [
              //
              Image.network(contato.foto, height: 150,),
              //
              TextField(
                controller: _controllerNome,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nome",
                  hintText: "Digite o nome",
                ),
              ),
              //
              TextField(
                controller: _controllerTelefone,
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Telefone",
                  hintText: "Digite o telefone",
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