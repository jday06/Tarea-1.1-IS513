//Cree un programa el cual imprima una lista con los primeros 15 números de la sucesión de Fibonacci.
void main(){
    final List<int> fibonacci = [];

    for(int n = 0; n < 15; n++){
        fibonacci.add(fib(n));
        }

  print(fibonacci);
}

  int fib(int n){
    if (n <= 0){
        return 0;
    }
    else if (n == 1){
        return 1;
    }
    else{
        return fib(n-1) + fib(n-2);
    }
  }