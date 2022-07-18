import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            iconSize: 50,
            icon: Icon(Icons.save),
            onPressed: () {
              _form.currentState!.save();
              Navigator.of(context).pop();
            },
            color: Colors.white,
          ),
        ],
        backgroundColor: Color(0xFF007a33),
        title: Text(' Formulário de Usuários'),
      ),
      body: Padding(
          padding: EdgeInsets.all(50),
          child: Form(
            key: _form,
            child: Column(
              children: <Widget>[
                TextFormField(
                    decoration: InputDecoration(labelText: 'Nome'),
                    validator: (value) {},
                    onSaved: (value) {
                      print(value);
                    }),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Senha'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'URL do Avatar'),
                )
              ],
            ),
          )),
    );
  }
}
