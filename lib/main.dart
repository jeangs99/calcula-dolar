import 'package:flutter/material.dart';
import 'package:myapp/cotacao.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calcula Cotação",
      home: Cotacao(),
    );
  }
}
