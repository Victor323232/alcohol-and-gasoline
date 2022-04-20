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
    String _textoresultado =  "";
   void _calcular (){
     double? precoAlcool = double.tryParse(_controllerAlcool.text);//conversion
     double? precoGasolina = double.tryParse(_controllerGasolina.text);
     if(precoAlcool== null || precoGasolina==null){
       setState(() {
         _textoresultado = "Número invalido, digite número maiores que 0 e utilizando[.]";
       });

     }else{
      if((precoAlcool / precoGasolina) >=0.7){
        setState(() {
          _textoresultado = "Melhor abastecer gasolina";
        });
      }else {
        setState(() {
          _textoresultado = "Melhor abastecer alcool";
        });

      }
      _limparcamposa();
     }
   }
   void _limparcamposa(){
     _controllerGasolina.text = "";
     _controllerAlcool.text = "";
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Color(0xfff520e8e),
      ),
      body: Container(

        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xfff520e8e)
                    ),
                    child: Text("Calcular",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white
                      ),
                    ),
                    onPressed: _calcular,
                  )

              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(_textoresultado,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ) ,

              )

            ],
          ),
        ),

      ),
    );
  }
}
