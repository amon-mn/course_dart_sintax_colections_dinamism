import 'transporte.dart';
import 'viagem.dart';

void main(){

  Viagem viagemMaio = Viagem(locomocao: Transporte.aviao);
  print(viagemMaio.consultarTotalLocaisVisitados);

  viagemMaio.visitar("São Gonçalo");
  print(viagemMaio.consultarTotalLocaisVisitados);

  viagemMaio.alterarLocaisVisistados = 100;
  print(viagemMaio.consultarTotalLocaisVisitados);

}










