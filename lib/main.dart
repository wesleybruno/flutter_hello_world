import 'package:flutter/material.dart';
import 'package:hello_world/screens/transferencias/lista.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple[400],
        accentColor: Colors.blueAccent[300],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.purple[100],
          textTheme: ButtonTextTheme.accent
        )
      ),
      home: ListaTransferencias(),
    );
  }
}

