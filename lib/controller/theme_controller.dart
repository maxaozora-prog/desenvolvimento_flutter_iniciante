import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends ChangeNotifier {
  final SharedPreferences sharedPreferences;

  bool darkTheme = false;

  ThemeController({//Construtor da classe com o sharedPreferences.
    required this.sharedPreferences,
  });

  void toggleTheme(bool value) async {
    darkTheme = !darkTheme;
    await sharedPreferences.setBool("theme", darkTheme);//Vai salvar o valor boleano. No caso vai salvar o darktheme com o nome da chave theme.
    notifyListeners();
  }

  Future<void> getTheme() async {//Algoritimo para buscar o valor do tema salvo no sharedPreferences.
    final theme = sharedPreferences.getBool("theme");//Buscando por theme

    if (theme != null) {
      darkTheme = theme;
      notifyListeners();
    }
  }
}