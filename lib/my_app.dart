 // This widget is the root of your application.
  import 'package:desenvolvimento_flutter_iniciante/routes/router.dart';
import 'package:desenvolvimento_flutter_iniciante/routes/routes.dart';
import 'package:flutter/material.dart';

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