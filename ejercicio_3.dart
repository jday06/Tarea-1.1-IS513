// Cree una clase Empleado que contenga las propiedades nombre, puesto y salario. Luego cree 
// una lista de “empleados” y una función que calcule el salario total de todos los empleados y otra 
// que calcule el salario promedio. 
void main() {
  final List<Empleado> empleados = [
    Empleado('Juan', 'Gerente', 5000),
    Empleado('Ana', 'Desarrolladora', 4000),
    Empleado('Luis', 'Diseñador', 3500),
    Empleado('María', 'Analista', 4500),
  ];

  double salarioTotal = calcularSalarioTotal(empleados);
  double salarioPromedio = calcularSalarioPromedio(empleados);

  print('Salario total: \$${salarioTotal}');
  print('Salario promedio: \$${salarioPromedio}');
}
//clase
class Empleado {
  String nombre;
  String puesto;
  double salario;
//construtcor
  Empleado(this.nombre, this.puesto, this.salario);
}

//funcion para el salario total
double calcularSalarioTotal(List<Empleado> empleados) {
  double total = 0;
  for (int i = 0; i < empleados.length; i++ ) {
    total += empleados[i].salario;
  }
  return total;
}
//funcuon para el salario promedio
double calcularSalarioPromedio(List<Empleado> empleados) {
  //if (empleados.isEmpty) return 0;
  double total = calcularSalarioTotal(empleados);
  return total / empleados.length;
}
