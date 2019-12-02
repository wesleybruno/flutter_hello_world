class Transferencia {
  final int valor;
  final String descricao;

  Transferencia(this.valor, this.descricao);

  @override
  String toString() {
    // TODO: implement toString
    return 'Valor: $valor - Descricao: $descricao';
  }
}
