import 'dart:io';

main(){
  
  getNumber();
  



}


  getNumber(){
    print("====== Digite um número ======");
    String inputNumero = stdin.readLineSync();
    int number = int.parse(inputNumero);
    soma(number);
    sub(number);
  }

  soma(int number){
    int somaNumber = ++number;
    print("Valor digitado mais um: $somaNumber");
  }

  sub(int number){
    int subNumber = --number;
    print("Valor digitado menos um: $subNumber");
  }