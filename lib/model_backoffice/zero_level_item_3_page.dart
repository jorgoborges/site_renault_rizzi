import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';
import 'package:flutter/cupertino.dart';
import 'package:site_renault_rizzi/model_class_cad_full/cad_pessoa.dart';

class zeroLevelItem3Page extends StatelessWidget {
  final TextEditingController _controladorprimeironome =
  TextEditingController();
  final TextEditingController _controladorsegundonome = TextEditingController();
  final TextEditingController _controladorcpf = TextEditingController();

  final TextEditingController _controladoremailcomercialdepartamento =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/zeroLevelItem3',
      body: Container(
        height: 800,
        color: const Color(0xFFffff8e1),
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, top: 10),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 20, top: 50),
                        child: Text(
                          'Cadastro Parceiros',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                ],
              ),
              Row(
                  children: [
                    Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 20, top: 50),
                          child: TextField(
                            maxLines: null,
                            maxLength: 25,
                            controller: _controladorprimeironome,
                            decoration: InputDecoration(
                              hintText: 'Primeiro Nome',
                              counterText: 'Primeiro Nome',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        )),
                    Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 20, top: 50),
                          child: TextField(
                            maxLength: 25,
                            maxLines: null,
                            controller: _controladorsegundonome,
                            decoration: InputDecoration(
                              hintText: 'Segundo Nome',
                              counterText: 'Segundo Nome',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        )),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 20, top: 50),
                        child: TextField(
                          maxLines: null,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            CpfInputFormatter()
                          ],
                          controller: _controladorcpf,
                          decoration: InputDecoration(
                            hintText: 'CPF',
                            counterText: 'CPF',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(left: 20, top: 50),
                          child: TextField(
                            maxLength: 64,
                            maxLines: null,
                            controller: _controladoremailcomercialdepartamento,
                            decoration: InputDecoration(
                              hintText: 'Email Comercial',
                              counterText: 'Email Comercial Departamento',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        )),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                  children: [
                    Container(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 20, top: 100),
                      ),
                    ),
                    Expanded(
                        child: FloatingActionButton(
                          child: Icon(Icons.save),
                          onPressed: () {
                            final String primeironome =
                                _controladorprimeironome.text;

                            final String segundonome = _controladorsegundonome.text;
                            final String cpf = _controladorcpf.text;

                            final String emailcomercialdepartamento =
                                _controladoremailcomercialdepartamento.text;

                            final Cadastropessoa cadastroNovo = Cadastropessoa(
                              primeironome,
                              segundonome,
                              cpf,
                              emailcomercialdepartamento,
                            );

                            print(cadastroNovo);
                          },
                        )),
                    Expanded(
                        child: FloatingActionButton(
                          child: Icon(Icons.edit),
                          onPressed: () {},
                        )),
                    Expanded(
                        child: FloatingActionButton(
                          child: Icon(Icons.exit_to_app_outlined),
                          onPressed: () {},
                        )),
                    Expanded(
                        child: FloatingActionButton(
                          child: Icon(Icons.picture_as_pdf_outlined),
                          onPressed: () {},
                        )),
                    Expanded(
                        child: FloatingActionButton(
                          child: Icon(Icons.filter_list_outlined),
                          onPressed: () {},
                        )),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
            ],
          ),
        ),
      ),
    );
  }
}
