import 'package:flutter/material.dart';
import 'package:hello_world/components/inputText.dart';
import 'package:hello_world/models/Transferencia.dart';

const TITULO_APPBAR = 'Nova Transferencia';
const TITULO_INPUT_NUMERO_CONTA = 'Numero Conta';
const HINT_INPUT_NUMERO_CONTA = '000000-0';

const TITULO_INPUT_VALOR = 'Valor';
const HINT_INPUT_VALOR = '000000-0';

const TEXTO_BOTAO_GRAVAR = 'SALVAR';

class FormularioTransferencia extends StatefulWidget {
  FormularioTransferencia({Key key}) : super(key: key);

  @override
  _FormularioTransferenciaState createState() =>
      _FormularioTransferenciaState();
}

class _FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controllerConta = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TITULO_APPBAR),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              InputText(
                controller: _controllerConta,
                label: TITULO_INPUT_NUMERO_CONTA,
                hint: HINT_INPUT_NUMERO_CONTA,
              ),
              InputText(
                controller: _controllerValor,
                label: TITULO_INPUT_VALOR,
                hint: HINT_INPUT_VALOR,
                icone: Icons.monetization_on,
              ),
              RaisedButton(
                onPressed: () => _criaTransferencia(context),
                child: const Text(
                  TEXTO_BOTAO_GRAVAR,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    String descricao = _controllerConta.text;
    int valor = int.tryParse(_controllerValor.text);
    if (descricao != '' && valor != '') {
      Transferencia transferencia = Transferencia(valor, descricao);
      Navigator.pop(context, transferencia);
    }
  }
}
