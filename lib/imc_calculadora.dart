import 'package:flutter/material.dart';
import 'buttons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
TextEditingController pesoController = TextEditingController();
TextEditingController alturaController = TextEditingController();
String _infotext = 'Informe Seus Dados!!';
void Refreesh (){
pesoController.text= "";
alturaController.text= "";
_infotext = 'Informe Seus Dados';
}
void calculadora (){
  double weight = double.parse(pesoController.text);
  double hight = double.parse(alturaController.text)/100;
  double imc = weight/(hight*hight);
    _infotext = 'Seu imc e ${imc.toStringAsFixed(2)}';
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                 setState(() {
                   Refreesh();
                 });
                },
                child: Icon(Icons.refresh),
              ),
            )
          ],
          title: const Text('Calculadora de Imc'),
          centerTitle: true,
          backgroundColor: Colors.red),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(100, 60, 100, 10),
              child: const Icon(
                Icons.person,
                size: 200,
              ),
            ),
            const Button(),
            const Button1(),
            ElevatedButton(
              onPressed: () {
              setState(() {
                calculadora();
              });
              },
              child: const Text('Button'),
              style: ElevatedButton.styleFrom(padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Radius
                ),
              ),
            ),
             SizedBox(height: 20,),
             Text(
              _infotext,
              style: const TextStyle(fontSize: 23),
            )
          ],
        ),
      ),
    );
  }
}
