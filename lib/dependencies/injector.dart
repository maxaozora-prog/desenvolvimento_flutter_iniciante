import 'package:desenvolvimento_flutter_iniciante/controller/pessoa_controller.dart';

import 'package:get_it/get_it.dart';

void injector() {
  GetIt.instance.registerSingleton<PessoaController>(PessoaController());
}