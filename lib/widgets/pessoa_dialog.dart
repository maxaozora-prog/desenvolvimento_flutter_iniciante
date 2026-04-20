import 'package:desenvolvimento_flutter_iniciante/extensions/extensions.dart';
import 'package:desenvolvimento_flutter_iniciante/models/pessoa.dart';
import 'package:desenvolvimento_flutter_iniciante/widgets/default_dialog_container.dart';
import 'package:flutter/material.dart';

class PessoaDialog extends StatelessWidget {
   final void Function(Pessoa pessoa) onDeletePessoa;//Aula da lista. Para deletar uma lista.Somente essa linha
  final Pessoa pessoa;
  const PessoaDialog({
    super.key,
    required this.pessoa,
    required this.onDeletePessoa,//Aula da lista. Para deletar uma lista. Somente essa linha.
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [//Ao inves de colocar no final o actions permite que coloque no topo mas que os itens ficam no final.
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              //style:
                 // ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
                 style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                onDeletePessoa(pessoa); //Aula da lista. Para deletar uma lista. Somente essa linha.
                Navigator.of(context).pop();
              },
              child: Text(
                //"Visualizar",
                  "Excluir", //Aula da lista. Para deletar uma lista. Somente essa linha.
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Fechar",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ],
      content: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Informações do usuário"),
            SizedBox(height: 8),
            DefaultDialogContainer(//Provem do default_dialog_container.dart
              child: Text("Id: ${pessoa.id}"),
            ),
            DefaultDialogContainer(
              child: Text("Nome: ${pessoa.nome}"),
            ),
            DefaultDialogContainer(
              child: Text("Peso: ${pessoa.peso.paraPeso()}"),//Atributo criado em extensions.dart
            ),
            DefaultDialogContainer(
              child: Text("altura: ${pessoa.altura.paraAltura()}"),
            ),
          ],
        ),
      ),
    );
  }
}