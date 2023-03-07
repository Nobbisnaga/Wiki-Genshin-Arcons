import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyFormulario extends StatefulWidget {
  const MyFormulario({super.key});

  @override
  State<MyFormulario> createState() => _MyFormularioState();
}

class _MyFormularioState extends State<MyFormulario> {
 TextEditingController _nomeControl = TextEditingController();
 String? _type;
 int _tipoSec = 0;
 bool _catalisador = false, _fisico = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CharacterList",
        style: TextStyle(fontStyle: FontStyle.italic)),
        centerTitle: true,
      ),

      body: Column(
      children: [

        Text(
          "Registro",
          style: TextStyle(fontSize: 20),
     ),

     TextField(
      controller: _nomeControl,
      decoration: InputDecoration(
        label:Text("Nome:")
      ),
     ),

     DropdownButton(
      value: _type,
      hint:Text("Select Element"),
      items: [

        DropdownMenuItem(
          child: Text("Dendro"),
          value: "Dendro",
          onTap: (){
            _type = "Dendro";
          },
          ),
        DropdownMenuItem(
          child: Text("Electro"),
          value: "Electro",
          onTap: (){
            _type = "Electro";
          },
          ),
          DropdownMenuItem(
          child: Text("Anemo"),
          value: "Anemo",
          onTap: (){
            _type = "Anemo";
          },
          ),
          DropdownMenuItem(
          child: Text("Pyro"),
          value: "Pyro",
          
          onTap: (){
            _type = "Pyro";
          },
          ),
          DropdownMenuItem(
          child: Text("Hydro"),
          value: "Hydro",
          ),
          DropdownMenuItem(
          child: Text("Geo"),
          value: "Geo",
          onTap: (){
            _type = "Geo";
          },
          ),
      ],
      onChanged: (obj){
        setState(() {
          
        });
      print(_type);
      }
      ),
      Row(
        children: [
          Radio(
            value: 0,
            groupValue: _tipoSec,
            onChanged: (val){
            },
          ),
          Text("Dendro"),
          Radio(
            value: 1,
            groupValue: _tipoSec,
            onChanged: (val){
              setState(() {
                _tipoSec = 1;
              });
            },
          ),
          Text("Electro"),
          Radio(
            value: 2,
            groupValue: _tipoSec,
            onChanged: (val){
              setState(() {
                _tipoSec = 2;
              });
            },
          ),
          Text("Anemo"),
          Radio(
            value: 3,
            groupValue: _tipoSec,
            onChanged: (val){
              setState(() {
                _tipoSec = 3;
              });
            },
          ),
          Text("Pyro"),
          Radio(
            value: 4,
            groupValue: _tipoSec,
            onChanged: (val){
              setState(() {
                _tipoSec = 4;
              });
            },
          ),
          Text("Hydro"),
          Radio(
            value: 5,
            groupValue: _tipoSec,
            onChanged: (val){
              setState(() {
                _tipoSec = 5;
              });
            },
          ),
          Text("Geo"),
          Radio(
            value: 6,
            groupValue: _tipoSec,
            onChanged: (val){
              setState(() {
                _tipoSec = 6;
              });
            },
          ),
        ]
      ),

      Text("Atk Type"),

      Checkbox(
       value: _catalisador,
       onChanged: (val){
        (_catalisador = !_catalisador
        );}
       ),
       Checkbox(
       value: _fisico,
       onChanged: (val){
        (_fisico = !_fisico
         );}
       )

    ],
   ),

  );
 }
}