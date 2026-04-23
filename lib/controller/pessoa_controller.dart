import 'package:desenvolvimento_flutter_iniciante/models/criar_pessoa_dto.dart';
import 'package:desenvolvimento_flutter_iniciante/models/pessoa.dart';
import 'package:flutter/material.dart';

class PessoaController extends ChangeNotifier{ //ChangeNotifier para injeção de dependencia
  List<Pessoa> _pessoas = [];
  List<Pessoa> get pessoas => _pessoas;
  ValueNotifier<String> mensagemNotifier = ValueNotifier("");
  void adicionarPessoa(CriarPessoaDto criarPessoa) {//CriarPessoaDto vem do criar_pessoa_dto.dart.
    final pessoa = Pessoa(
      id: _pessoas.length + 1,
      nome: criarPessoa.nome,
      altura: criarPessoa.altura,
      peso: criarPessoa.peso,
    );

    _pessoas.add(pessoa);
     mensagemNotifier.value = "Pessoa adicionada com sucesso."; //ValueNotifier.
    notifyListeners(); //Notifica os ouvintes que ouve uma mudança. Para atualizar a tela.
  }

  void removerPessoa(Pessoa pessoa) {
    _pessoas.remove(pessoa);
    mensagemNotifier.value = "Pessoa removida com sucesso."; //ValueNotifier.
     notifyListeners(); //Injeção de dependencia. Notifica os ouvintes que ouve uma mudança. Para atualizar a tela.
  }
}