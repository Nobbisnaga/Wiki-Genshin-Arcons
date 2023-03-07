import 'package:flutter/material.dart';
import 'package:flutter_application_2/formulario.dart';

void main() => runApp(const MyForms());

class MyForms extends StatelessWidget {
  const MyForms({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PokeFormulário',
      theme: ThemeData(
        
        primarySwatch: Colors.green,
      ),
      home: const MyFormulario(),
    );
  }
}
