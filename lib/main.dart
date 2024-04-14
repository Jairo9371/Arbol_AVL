import 'package:flutter/material.dart';
import 'arbol.dart';
import 'arbolPainter.dart';
import 'package:flutter/cupertino.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arbol AVL',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'AVL'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

Arbol objArbol = Arbol();
  final _textFieldController = TextEditingController();
  // ignore: prefer_typing_uninitialized_variables
  var _dato;

  late ArbolPainter _painter;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff071e3d),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 60,
                width: 60,
              ),
              const Center(child:  Text("Arbol Binario de Busqueda", style: TextStyle(color: Colors.white, fontSize: 20),),),
              const SizedBox(
                height: 10,
                width: 10,
              ),
              CustomPaint(
                painter: _painter,
                size: Size(MediaQuery.of(context).size.width, 250),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                    controller: _textFieldController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(hintText: "Ingresa un numero",hintStyle: TextStyle(color: Colors.white), ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CupertinoButton(
                          padding: const EdgeInsets.all(5),
                          color: const Color(0xff3282b8),
                          onPressed: () {
                            setState(() {
                              _dato = _textFieldController.text;
                              objArbol.insertarNodo(int.parse(_dato));
                              _textFieldController.text = "";
                            });
                          },
                          child:const Text(
                            "Agregar",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xfffff5a5),
                            ),
                          ),
                        ),
                      ),
                    ),
                     Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CupertinoButton(
                          padding: const EdgeInsets.all(5),
                          color: const Color(0xffff6464),
                          onPressed: () {
                            setState(() {
                              //Eliminar
                            });
                          },
                          child: const Text(
                            "Eliminar",
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xfffff5a5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton (
                onPressed: () {
                  setState(() {
                    objArbol.resetArbol();
                  });
                },
                child: const Text("Resetear Arbol",style: TextStyle(color: Colors.white, fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}


