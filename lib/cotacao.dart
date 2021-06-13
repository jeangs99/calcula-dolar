import 'package:flutter/material.dart';

class Cotacao extends StatefulWidget {
  @override
  _CotacaoState createState() => _CotacaoState();
}

class _CotacaoState extends State<Cotacao> {
  TextEditingController real =
      new TextEditingController();

      String resultado = "";

      double dolar = 5.11;

  calculaDolar(){
    double valorFinal = double.parse(real.text);
    double calculo = valorFinal * dolar;
    
    print(resultado);
    setState(() {
      resultado = calculo.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cotação"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: real,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              icon: Icon(Icons.attach_money_rounded),
              hintText: 'Informe um valor em dólar',
              labelText: 'Valor',
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.green.shade200,
            
            ),
            child: FlatButton(onPressed: calculaDolar, child: Text("Calcular")),
          ),
          SizedBox(height: 80,),
          Container(
            child: Text("Valor do dólar em reais", style: TextStyle(fontSize: 30),),
            
          ),
          SizedBox(height: 80,),
          Text(resultado, style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}
