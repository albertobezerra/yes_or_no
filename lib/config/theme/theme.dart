import 'package:flutter/material.dart';

const Color _cordeDestaque = Color(0xFFDB1E7C);
const List<Color> _coresDoTema = [
  _cordeDestaque,
  Colors.deepPurple,
  Colors.indigoAccent,
  Colors.cyanAccent,
  Colors.grey,
];

class AppTheme {
  final int seletordeCor;

  AppTheme({this.seletordeCor = 0})
      : assert(seletordeCor >= 0 && seletordeCor <= _coresDoTema.length - 1,
            'Escolha uma cor entre 0 e ${_coresDoTema.length} ');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: false, // na versão atual do flutter, é true por padrao
      colorSchemeSeed: _coresDoTema[seletordeCor],
    );
  }
}
