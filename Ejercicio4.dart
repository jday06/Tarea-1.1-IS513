/*  Ejercicio 4: 
Cree una clase Libro con las propiedades titulo, autor, y anioPublicacion. Crea una clase 
Biblioteca que contenga una lista de libros y funciones para:
a. Agregar libros.
b. Eliminar libros.
c. Buscar libros por autor.
d. Listar todos los libros ordenados por año de publicación. */

void main() {
  //Variables para agregar libros:
  var biblioteca = Biblioteca();
  var libro1 = Libro("Los Juegos del Hambre", "Suzanne Collins", 2008);
  var libro2 = Libro("Cien anios de soledad", "Gabriel Garcia Marquez", 1967);
  var libro3 = Libro(
    'El amor en los tiempos del cólera',
    'Gabriel Garcia Marquez',
    1985,
  );

  biblioteca.agregarLibro(libro1);
  biblioteca.agregarLibro(libro2);
  biblioteca.agregarLibro(libro3);

  //Imprimiendo los libros como lista antes de eliminar un libro:
  print('\nLista de libros en la biblioteca:');
  print(biblioteca.libros);

  //Eliminando un libro:

  //biblioteca.eliminarLibro("Los juegos del Hambre");
  //print(biblioteca.libros);

  //Buscando libros por nombre de autor:
  print("\nBuscando libros de Gabriel Garcia Marquez:");
  var buscar = biblioteca.buscarAutor('Gabriel Garcia Marquez');
  for (var libro in buscar) {
    print(libro);
  }

  //Mostrando libros ordenados:
  var librosOrdenados = biblioteca.librosPorAnio();
  print(
    "\nEstos son los libros de nuestra bibloteca ordenados por anio de publicacion: ",
  );
  for (var libro in librosOrdenados) {
    print(libro);
  }
}

//Clase Libro:
class Libro {
  final String titulo;
  final String autor;
  final int anioPublicacion;

  Libro(this.titulo, this.autor, this.anioPublicacion); //Constructor Libro

  @override
  String toString() {
    return 'Titulo: $titulo, Autor: $autor, anio: $anioPublicacion';
  }
}

//Clase Biblioteca:
class Biblioteca {
  final List<Libro> libros = []; //Lista de los libros

  //Funcion para agregar los libros:
  void agregarLibro(Libro libro) {
    libros.add(libro);
    print(
      'Libro "${libro.titulo}" del autor "${libro.autor}" lanzado en el anio "${libro.anioPublicacion}" fue agregado a la biblioteca',
    );
  }

  //Funcion para eliminar uno de los libros de la lista:
  void eliminarLibro(String tituloEliminar) {
    libros.removeWhere(
      (libro) => libro.titulo.toLowerCase() == tituloEliminar.toLowerCase(),
    );
    print('\nLibro $tituloEliminar fue eliminado de la biblioteca');
  }

  //Funcion para buscar libros por nombre de autor:
  List<Libro> buscarAutor(String autorBuscando) {
    return libros
        .where(
          (libro) =>
              libro.autor.toLowerCase().contains(autorBuscando.toLowerCase()),
        )
        .toList();
  }

  //Funcion para listar los libros por fecha de publicacion:
  List<Libro> librosPorAnio() {
    //Creando una lista ordenada por anio de publicacion:
    List<Libro> librosOrdenados = List.from(libros);
    librosOrdenados.sort(
      (a, b) => a.anioPublicacion.compareTo(
        b.anioPublicacion,
      ), //Comparando si el libro a fue lanzado antes o despues que el libro b
    );
    return librosOrdenados;
  }
}
