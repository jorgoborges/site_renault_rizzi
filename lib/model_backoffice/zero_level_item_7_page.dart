//TELA CRIAÇÃO - LIBERAÇÃO SENHA


import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';
import 'package:flutter/cupertino.dart';

class zeroLevelItem7Page extends StatelessWidget {
  TextEditingController tc1 = TextEditingController();
  TextEditingController tc2 = TextEditingController();
  TextEditingController tc3 = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/zeroLevelItem7',
      body: Container(
        width: 800,
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, top: 100),
        child: SingleChildScrollView(
            child: Column(children: [
              const Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('Departamento',
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                ),
              ),
              Row(
                  children: [
                    Expanded(
                      child: Text('Data:'),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        height: 20,
                        width: 15,
                        child: TextField(
                            controller: tc1,
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.center),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Text('Departamento_nome:'),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        height: 15,
                        width: 20,
                        child: TextField(
                            controller: tc2,
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.center),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Text('Localizacao_id:'),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        height: 20,
                        width: 15,
                        child: TextField(
                            controller: tc3,
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.center),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),

              Row(
                children: [
                  Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        height: 25,
                        width: 5,
                      ))
                ],
              ),
              Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        height: 25,
                        width: 5,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xff041e42)),
                          onPressed: () {},
                          child: Text('Voltar',
                              style: TextStyle(fontSize: 14, color: Colors.white)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        height: 25,
                        width: 5,
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xff041e42)),
                          onPressed: () {}, // falta direcionar para tela xpto
                          child: Text('Salvar',
                              style: TextStyle(fontSize: 14, color: Colors.white)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        height: 25,
                        width: 5,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xff041e42)),
                          onPressed: () {},
                          child: Text('Seguir',
                              style: TextStyle(fontSize: 14, color: Colors.white)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        height: 25,
                        width: 5,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xff041e42)),
                          onPressed: () {},
                          child: Text('Sair',
                              style: TextStyle(fontSize: 14, color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center),
            ], mainAxisAlignment: MainAxisAlignment.spaceEvenly)),
      ),
    );
  }
}
