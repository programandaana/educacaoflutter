class Escola {
  int _id;
  String _nome;
  String _endereco;
  double _latitude;
  double _longitude;

  Escola(this._id, this._nome, this._endereco, this._latitude, this._longitude);

  set id(int i) {
    _id = i;
  }

  int get id {
    return _id;
  }

  set nome(String n) {
    _nome = n;
  }

  String get nome {
    return _nome;
  }

  set endereco(String e) {
    _endereco = e;
  }

  String get endereco {
    return _endereco;
  }

  set latitude(double la) {
    _latitude = la;
  }

  double get latitude {
    return _latitude;
  }

  set longitude(double lo) {
    _longitude = lo;
  }

  double get longitude {
    return _longitude;
  }
}
