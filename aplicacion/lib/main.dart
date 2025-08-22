import 'package:flutter/material.dart';
import 'page/login_page.dart';



void main() {
  runApp(
    const AplicacionSena());
}

class AplicacionSena extends StatelessWidget {
  const AplicacionSena({super.key});

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login_page()
    );
  }

}


