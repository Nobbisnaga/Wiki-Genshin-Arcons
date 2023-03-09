import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/model/model.dart';
import 'package:flutter_application_2/receba.dart';

class MyFormulario extends StatefulWidget {
  const MyFormulario({super.key});

  @override
  State<MyFormulario> createState() => _MyFormularioState();
}

class _MyFormularioState extends State<MyFormulario> {
 TextEditingController _nomeControl = TextEditingController();
 String? _type;
 int _tipoSec = 0;
 bool _catalisador = false, _fisico = false, _raro = false;
 void _getFields(){
  Archon archon = Archon(
    _nomeControl.text,
    _type,
    _tipoSec,
    _catalisador,
    _fisico, _raro);
    print(archon);
    Navigator.push(
      context,
      MaterialPageRoute(builder:(context)=> Receba(archon: archon))
      );
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Nahida"),
            accountEmail: Text("sabedoria@gmail.com")
            ),
          ListTile(
            leading: Icon(Icons.attach_money, color: Colors.purple),
            title: Text("ArchonList"),
            subtitle: Text("Info"),
            onTap:  () => print("clicou!"),
          ),
          ListTile(
            leading: Icon(Icons.edit, color: Colors.blue),
            title: Text("Nations"),
            subtitle: Text("info"),
            onTap:  () => print("clicou!"),
          ),
          Text("Mondstadt"),
          Text("Liyue"),
          Text("Inazuma"),
          Text("Sumeru")
        ],
      ),
      ),



      appBar: AppBar(
        title: const Text("CharacterList",
        style: TextStyle(fontStyle: FontStyle.italic)),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
          children: [
              
            Text(
              "Registro",
              style: TextStyle(fontSize: 20),
             ),
              
             TextField(
          maxLength: 16,
          controller: _nomeControl,
          decoration: InputDecoration(
            label:Text("Nome:")
          ),
             ),
              
             Container(
               child: Padding(
                 padding: EdgeInsets.only(top: 20),
                 child: DropdownButton(
                         isExpanded: true,
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
               ),
             ),


          Container(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Radio(
                  value: 0,
                  groupValue: _tipoSec,
                  onChanged: (val){
                    setState(() {
                      _tipoSec = 0;
                    });
                  },
                ),
                Text("Dendro"),
                SizedBox(width: 100),
          
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
                SizedBox(width: 100),
          
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
                SizedBox(width: 100),
          
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
                SizedBox(width: 100),
          
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
                SizedBox(width: 100),
          
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
                SizedBox(width: 100),
                
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
          ),
              
          SizedBox(height: 20),
          Text("Atk Type"),
              
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                 value: _catalisador,
                 onChanged: (val){
                  ({_catalisador = !_catalisador
                 });
                  }
                 ), Text("Catalisador"),
              SizedBox(width: 100),
             Checkbox(
                 value: _catalisador,
                 onChanged: (val){
                  ({_fisico = !_fisico
                 });
                  }
                 ), Text("Fisico"),
              SizedBox(width: 100),
            ],
            ),
          ),
              
          
              SizedBox(width: 30),
           SwitchListTile(
            title: Text("Raro"),
            value: _raro,
            onChanged:(val)=>
              setState(() {
                _raro = !_raro;
              })
            ),
            
            
              SizedBox(width: 30),

            Container(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.only(top: 20, right:20)),
                ),
                onPressed: _getFields,
                icon: Icon(Icons.api_sharp),
                label: Text(
                  "Registrar",
                  style: TextStyle(

                    fontSize: 22
                  )
                  ),
                ),
            )
          ],
            ),
        ),
      ),

  );
 }
}
