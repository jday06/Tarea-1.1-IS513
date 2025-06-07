void main() {
  var cuenta = CuentaBancaria('Juan Pérez', 1000.0);

  cuenta.consultarSaldo();

  cuenta.depositarDinero(250.0);
  cuenta.consultarSaldo();

  cuenta.retirarDinero(500.0);
  cuenta.consultarSaldo();

  cuenta.retirarDinero(1000.0); // Intento de retiro mayor al saldo
}

class CuentaBancaria {
  String titular;
  double saldo;

  CuentaBancaria(this.titular, this.saldo);

  void depositarDinero(double cantidad) {
    if (cantidad > 0) {
      saldo += cantidad;
      print('Depósito exitoso: \$${cantidad.toStringAsFixed(2)}');
    } else {
      print('Error: La cantidad a depositar debe ser mayor que cero.');
    }
  }

  void retirarDinero(double cantidad) {
    print("\nIntentando retirar: ${cantidad}");

    if (cantidad <= 0) {
      print('Error: La cantidad a retirar debe ser mayor que cero.');
    } else if (cantidad > saldo) {
      print(
        'Fondos insuficientes. No se puede retirar \$${cantidad.toStringAsFixed(2)}',
      );
    } else {
      saldo -= cantidad;
      print('Retiro exitoso: \$${cantidad.toStringAsFixed(2)}');
    }
  }

  void consultarSaldo() {
    print('Saldo actual de $titular: \$${saldo.toStringAsFixed(2)}');
  }
}
