
 class Nodo {
  late int _dato;
  late Nodo _izquierda;
  late Nodo _derecha;
  
  Nodo(int elemento) {
    _dato = elemento;
  }

  Nodo insertar(Nodo raiz, Nodo nuevo) {
    if (raiz.date > nuevo.date) {
    raiz.izquierda = insertar(raiz.left, nuevo);
  } else if (raiz.date < nuevo.date) {
    raiz.derecha = insertar(raiz.left, nuevo);
  }
    return raiz;
  }

  get date{
    return _dato;
  }

  set dato(int elemento)
  {
    _dato = elemento;
  }
  get left{
    return _izquierda;
  }

  void set izquierda(Nodo nodo) {
    _izquierda = nodo;
  }

  get rigth {
    return _derecha;
  }

  set derecha(Nodo nodo) {
    _derecha = nodo;
  }
}

