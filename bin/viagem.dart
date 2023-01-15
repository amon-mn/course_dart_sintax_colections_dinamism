import 'transporte.dart';

class Viagem {
  double dinheiro = 0;
  int _totalLocalVisistados = 0;
  static String codigoTrabalho = "JDLLLLJK22";
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};

  Viagem({required this.locomocao});

  void printCodigo() {
    print(codigoTrabalho);
  }

  void funcEscolherMeioTransporte(Transporte locomocao) {
    switch (locomocao) {
      case Transporte.carro:
        print("Vou de CARRO comprar um feijão");
        break;
      case Transporte.skate:
        print("Vou de SKATE comprar um feijão");
        break;
      case Transporte.bike:
        print("Vou de BIKE comprar um feijão");
        break;
      default:
        print("Vou ficar sem feijão mesmo");
    }
  }

  void visitar(String localVisita){
    registrosVisitados.add(localVisita);
    _totalLocalVisistados = _totalLocalVisistados + 1;
  }

  void registrarPrecoVisita(String local, dynamic preco){
    registrarPrecos[local] = preco;
  }

  void removerRegistroVisita(String local){
    registrarPrecos.remove(local);
  }


  int get consultarTotalLocaisVisitados{
    return _totalLocalVisistados;

  }

  void set alterarLocaisVisistados(int novaQnt){
    if(novaQnt < 10){
      _totalLocalVisistados = novaQnt;
    } else {
      print('Não é possível!');
    }
  }


}
