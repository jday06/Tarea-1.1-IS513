//Crea un programa que devuelva una lista con todos los elementos únicos de otra lista. 
void main() {
  //lista con numeros repetidos
  final List <int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3 ,3 ,8, 12, 4, 5];
  //lista solo con los numeros pares de la lista numeros
  final List <int> pares = [];

  for (int i=0; i<numeros.length; i++) {
    if (numeros[i] % 2 == 0) { //veridica si es par
      bool esRepetido = false;
      
      //verifica si el número ya está en la lista pares
      for (int j=0; j<pares.length; j++) {
        if (pares[j] == numeros[i]) {
          esRepetido = true;
          break;
        }
      }
      
      if (!esRepetido) {
        pares.add(numeros[i]);
      }
    }
  }

  print(pares); //imprimir la lista de elementos únicos
}