
import 'nodo.dart';
import 'dart:math' show max;

class Arbol {
 late Nodo _raiz;

  void insertarNodo(int elemento) {
    Nodo nuevo = Nodo(elemento);
    _raiz = nuevo.insertar(raiz, nuevo);
    }

  int altura(Nodo n) {
    int altder = (n.rigth == null ? 0 : 1 + altura(n.rigth));
    int altizq = (n.left == null ? 0 : 1 + altura(n.left));
    return max(altder, altizq);
  }

  void resetArbol() {
    // ignore: unnecessary_null_comparison
    _raiz == null;
  }

  // ignore: unnecessary_getters_setters
  Nodo get raiz {
    return _raiz;
  }

  set raiz(Nodo n) {
    _raiz = n;
  }
}
 