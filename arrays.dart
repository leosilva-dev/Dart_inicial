import 'dart:io';

main(){

var nomes = [];
bool condicao = true;

while(condicao){
  print("Digite um nome:");
  String text = stdin.readLineSync();
  if(text == "sair"){
    print("***Programa Finalizado***");
    condicao = false;
  } else{
    nomes.add(text);
  }

  print(nomes);
  print("\n");

}





}