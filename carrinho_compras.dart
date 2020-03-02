import 'dart:io';

List<String> produtos = [];

main(){

  
  bool condicao = true;
  
  limparTerminal();

  while(condicao){

    print("=== Lista de compras ===");
    String text = stdin.readLineSync();

    if (text == "sair") {
      print("=== Termino da Compra! ===");
      condicao = false;

    }else if (text == "print") {
      limparTerminal();
      print("=== Lista de compras ===");
      imprimir();

    }else if(text == "remover"){
      limparTerminal();
      remover();

    }else{
      produtos.add(text);
      limparTerminal();
    }
    
  }

}

imprimir(){
  for(int i = 0;i < produtos.length;i++){
        print("Item $i - ${produtos[i]}");
      }
}

remover(){
print("=== Remover um item ===");
      imprimir();
      print("Digite o número do item para remover:");
      int itemremover = int.parse(stdin.readLineSync());
      produtos.removeAt(itemremover);
      limparTerminal();
      print("=== Lista de compras ===");
      imprimir();
}

limparTerminal(){
  print("\x1B[2J\x1B[0;0H");
}