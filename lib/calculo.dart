import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class calculo extends StatefulWidget {
  const calculo({Key? key}) : super(key: key);

  @override
  State<calculo> createState() => _calculoState();
}

class _calculoState extends State<calculo> {
   TextEditingController _controllerAlcool = TextEditingController();
   TextEditingController _controllerGasolina = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Color(0xfff520e8e),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column (
          children: <Widget>[
          Padding(padding:EdgeInsets.only(bottom: 10),
            child:Image.asset('images/logo.png'),
          ),
            Padding(padding: EdgeInsets.all(18),
              child:Text(
                "Saiba qual a melhor opção para abastecimento do seu carro",
                style:TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),

              ),
            ),
           TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Preço Álcool ex:1.59",
                ),
                style: TextStyle(
                    fontSize: 20
                ),
                controller: _controllerAlcool,
              ),
             TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço Gasolina ex:3.59",
                ),
                style: TextStyle(
                    fontSize: 20
                ),
                controller:_controllerGasolina ,
              ),

           Padding(padding: EdgeInsets.all(20),
              child: ElevatedButton(
                 child: Text("Calcular",
                   style: TextStyle(
                     fontSize: 30,
                   ),
                 ),
                 onPressed: (){},
               )

           )
          ],
        ),

      ),
    );
  }
}
