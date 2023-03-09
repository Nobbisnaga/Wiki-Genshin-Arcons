class Archon{
  String? _nome;
  String? _type;
  int? _tipoSec;
  bool? _catalisador, _fisico, _raro;

  Archon(
    this._nome,
    this._type,
    this._tipoSec,
    this._catalisador,
    this._fisico,
    this._raro
  );

@override
  String toString(){
    return "Nome: $_nome\nTipo: $_type e $_tipoSec\n"
    +"Catalisador:$_catalisador\nFisico:$_fisico\nRaro:$_raro";
  }
}