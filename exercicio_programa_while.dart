import 'dart:io';

main(){

bool condicao = true;

while(condicao){
  print("=== DIGITE UM TEXTO ===");
  String text = stdin.readLineSync();
  if(text == "sair"){
    print("=== PROGRAMA FINALIZADO ===");
      condicao = false;
  } else{
    print("=== VOCÊ DIGITOU: $text");
  }
}


}