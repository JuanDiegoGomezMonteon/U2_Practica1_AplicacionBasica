

import 'package:flutter/material.dart';

class Practica1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Practica1();
  }

}

class _Practica1 extends State<Practica1>{
  final email = TextEditingController();
  final password = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplicación Básica"),
        backgroundColor: Colors.red,
        actions: [
          IconButton(onPressed: (){email.text =""; password.text = "";}, icon: Icon(Icons.account_circle_rounded))
        ],

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Bienvenido",style: TextStyle(fontSize: 30,color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold),),
          SizedBox(height: 30,),
          Padding(
            padding: EdgeInsets.all(30),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: "correo",
                prefixIcon: Icon(Icons.account_circle),
                border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
              padding: EdgeInsets.all(30),
            child: TextField(
              controller: password,
              decoration: InputDecoration(
                labelText: "contraseña",
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder()
              ),
            ),
          ),

          ElevatedButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Acceso Permitido'),
                  content: Text('Bienvenido ' + email.text),
                  backgroundColor: Colors.deepOrangeAccent,
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              )

              , child: Text("Login"),
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.deepOrangeAccent) ),
          ),
          SizedBox(height: 10,),
          Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
              activeColor: Colors.deepOrangeAccent,
              hoverColor: Colors.blueGrey,

          ),
          const Text("No soy un robot",style: TextStyle(fontSize: 10,color: Colors.deepOrangeAccent, fontWeight: FontWeight.bold),)

        ],
      ),
    );
  }

}