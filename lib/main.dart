import 'package:desenvolvimento_flutter_iniciante/models/pessoa.dart';
import 'package:desenvolvimento_flutter_iniciante/widgets/lista_pessoas.dart';
import 'package:desenvolvimento_flutter_iniciante/widgets/pessoa_listtile.dart';
import 'package:desenvolvimento_flutter_iniciante/widgets/stateless_widget.dart';
import 'package:flutter/material.dart';
import 'package:desenvolvimento_flutter_iniciante/pages/home_page.dart';
import 'package:desenvolvimento_flutter_iniciante/routes/router.dart';
import 'package:desenvolvimento_flutter_iniciante/routes/routes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.initialRoute, //Vai iniciar na rota que passar pega do router.dart
      routes: routes, //do arquivo router.dart
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: false,
       
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("Meu primeiro App."),
      //   ),
      //    body: ListaPessoas(),
        // body: PessoaListTile(
        //   pessoa: Pessoa(
        //     id:1,
        //     nome:"Max",
        //     altura:180,
        //     peso:79
        //   )
        // ),
      // ),
    );
  }
}



