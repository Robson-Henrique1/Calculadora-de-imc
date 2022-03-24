import 'package:flutter/material.dart';
import 'package:untitled10/imc_calculadora.dart';

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) => Padding(
      padding:  const EdgeInsets.fromLTRB(28, 3, 28, 3),
      child:  TextField(
        controller: pesoController ,
        decoration:  const InputDecoration(labelText: 'Peso',
            border: OutlineInputBorder()),
      ),
    );
}
class Button1 extends StatelessWidget {
  const Button1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.all(28.0),
      child:  TextField(
        controller: alturaController,
        decoration:  const InputDecoration(labelText: 'Altura',
            border: OutlineInputBorder()),
      ),
    );
  }
}


