import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';
import 'package:flutter/cupertino.dart';
import 'package:site_renault_rizzi/interface/class_cadastros.dart';
//import 'package:http/http.dart' as http;
//import 'dart:convert';

class zeroLevelItem1Page extends StatelessWidget {
  final TextEditingController _controladordata = TextEditingController();
  final TextEditingController _controladorconta = TextEditingController();
  final TextEditingController _controladorrazao = TextEditingController();
  final TextEditingController _controladorbandeira = TextEditingController();
  final TextEditingController _controladornomecomercial =
      TextEditingController();
  final TextEditingController _controladortipo = TextEditingController();
  final TextEditingController _controladorcnpj = TextEditingController();
  final TextEditingController _controladorie = TextEditingController();
  final TextEditingController _controladorendereco = TextEditingController();
  final TextEditingController _controladorcomplemento = TextEditingController();
  final TextEditingController _controladorbairro = TextEditingController();
  final TextEditingController _controladoruf = TextEditingController();
  final TextEditingController _controladorcep = TextEditingController();
  final TextEditingController _controladorcidade = TextEditingController();
  final TextEditingController _controladorfone = TextEditingController();
  final TextEditingController _controladorfax = TextEditingController();
  final TextEditingController _controladoremailcomercial =
      TextEditingController();
  final TextEditingController _controladorsite = TextEditingController();
  final TextEditingController _controladortitular = TextEditingController();
  final TextEditingController _controladorregiao = TextEditingController();
  final TextEditingController _controladorsetor = TextEditingController();
  final TextEditingController _controladorregiaosetor = TextEditingController();
  final TextEditingController _controladorgrupo = TextEditingController();
  final TextEditingController _controladorcat = TextEditingController();
  final TextEditingController _controladortamshowroom = TextEditingController();

  final TextEditingController _controladorprimeironome =
      TextEditingController();
  final TextEditingController _controladorsegundonome = TextEditingController();
  final TextEditingController _controladorcpf = TextEditingController();
  final TextEditingController _controladorcargo = TextEditingController();
  final TextEditingController _controladorfuncao = TextEditingController();

  final TextEditingController _controladorsenhagerada = TextEditingController();

  final TextEditingController _controladorcontamatriz = TextEditingController();
  final TextEditingController _controladorrepresentante =
      TextEditingController();
  final TextEditingController _controladorcontagrupo = TextEditingController();
  final TextEditingController _controladoremailparaenvioacesso =
      TextEditingController();
  final TextEditingController _controladoremailcomercialdepartamento =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/zeroLevelItem1',
      body: Container(
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
                      child: Text(
                    'Cadastro Completo',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ],
              ),
              Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: TextField(
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              DataInputFormatter()
                            ],
                            maxLength: 8,
                            controller: _controladordata,
                            decoration: InputDecoration(
                              hintText: 'Data',
                              counterText: 'Data de inclusão',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.datetime),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorconta,
                        decoration: InputDecoration(
                          hintText: 'Conta',
                          counterText: 'BIR - Conta - Outros',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorcontagrupo,
                        decoration: InputDecoration(
                          hintText: 'Conta Grupo',
                          counterText: 'Conta Grupo',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorcontamatriz,
                        decoration: InputDecoration(
                          hintText: 'Conta Matriz',
                          counterText: 'Conta Matriz',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorrazao,
                        decoration: InputDecoration(
                          hintText: 'Razão Social',
                          counterText: 'Razão Social',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorbandeira,
                        decoration: InputDecoration(
                          hintText: 'Bandeira',
                          counterText: 'Bandeira',
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
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: TextField(
                          controller: _controladornomecomercial,
                          decoration: InputDecoration(
                            hintText: 'Nome Comercial',
                            counterText: 'Nome Comercial',
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladortipo,
                        decoration: InputDecoration(
                          hintText: 'Tipo',
                          counterText: 'Tipo',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          CnpjInputFormatter()
                        ],
                        controller: _controladorcnpj,
                        decoration: InputDecoration(
                          hintText: 'CNPJ',
                          counterText: 'CNPJ',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorie,
                        decoration: InputDecoration(
                          hintText: 'Inscrição Estadual',
                          counterText: 'Inscrição Estadual',
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
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorendereco,
                        decoration: InputDecoration(
                          hintText: 'Endereço',
                          counterText: '(logradouro + número)',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          CepInputFormatter()
                        ],
                        controller: _controladorcep,
                        decoration: InputDecoration(
                          hintText: 'Cep',
                          counterText: 'Cep',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorcomplemento,
                        decoration: InputDecoration(
                          hintText: 'Complemento',
                          counterText: 'Complemento',
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
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorbairro,
                        decoration: InputDecoration(
                          hintText: 'Bairro',
                          counterText: 'Bairro',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladoruf,
                        decoration: InputDecoration(
                          hintText: 'UF',
                          counterText: 'UF',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                      child: (DropdownButton<String>(
                        hint: Text('UF'),
                        onChanged: (regiaoSelecionada) {
                          print(regiaoSelecionada);
                        },
                        items: Estados.listaEstadosSigla.map((String estado) {
                          return DropdownMenuItem(
                            value: estado,
                            child: Text(estado),
                          );
                        }).toList(),
                      )),
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorcidade,
                        decoration: InputDecoration(
                          hintText: 'Cidade',
                          counterText: 'Cidade',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                      child: (DropdownButton<String>(
                        hint: Text('Estado'),
                        onChanged: (estadoSelecionada) {
                          print(estadoSelecionada);
                        },
                        items: Estados.listaEstados.map((String estado) {
                          return DropdownMenuItem(
                            value: estado,
                            child: Text(estado),
                          );
                        }).toList(),
                      )),
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          TelefoneInputFormatter()
                        ],
                        controller: _controladorfone,
                        decoration: InputDecoration(
                          hintText: 'Telefone',
                          counterText: 'Telefone',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          TelefoneInputFormatter()
                        ],
                        controller: _controladorfax,
                        decoration: InputDecoration(
                          hintText: 'Fax',
                          counterText: 'Fax',
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
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladoremailcomercial,
                        decoration: InputDecoration(
                          hintText: 'Email Comercial',
                          counterText: 'Email Comercial',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorsite,
                        decoration: InputDecoration(
                          hintText: 'Site',
                          counterText: 'Site',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladortitular,
                        decoration: InputDecoration(
                          hintText: 'Titular',
                          counterText: 'Titular',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorrepresentante,
                        decoration: InputDecoration(
                          hintText: 'Representante',
                          counterText: 'Representante',
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
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorregiao,
                        decoration: InputDecoration(
                          hintText: 'Região',
                          counterText: 'Regiao',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                      child: (DropdownButton<String>(
                        hint: Text('Região'),
                        onChanged: (regiaoSelecionada) {
                          print(regiaoSelecionada);
                        },
                        items: Regioes.listaRegioes.map((String regiao) {
                          return DropdownMenuItem(
                            value: regiao,
                            child: Text(regiao),
                          );
                        }).toList(),
                      )),
                    ),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorsetor,
                        decoration: InputDecoration(
                          hintText: 'Setor',
                          counterText: 'Setor',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorregiaosetor,
                        decoration: InputDecoration(
                          hintText: 'Região Setor',
                          counterText: 'Região Setor',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorgrupo,
                        decoration: InputDecoration(
                          hintText: 'Grupo',
                          counterText: 'Grupo',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorcat,
                        decoration: InputDecoration(
                          hintText: 'Cat',
                          counterText: 'Cat',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladortamshowroom,
                        decoration: InputDecoration(
                          hintText: 'Tamanho Showroom',
                          counterText: 'Tamanho Showroom',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ))
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Text(
                    'Cadastro Pessoa',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ],
              ),
              Row(
                  children: [
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
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
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
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
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: TextField(
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
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorcargo,
                        decoration: InputDecoration(
                          hintText: 'Cargo',
                          counterText: 'Cargo',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorfuncao,
                        decoration: InputDecoration(
                          hintText: 'Função',
                          counterText: 'Função',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladoremailcomercial,
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
                children: <Widget>[
                  Expanded(
                      child: Text(
                    'Cadastro Senha',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ],
              ),
              Row(
                  children: [
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladorsenhagerada,
                        decoration: InputDecoration(
                          hintText: 'Senha Gerada',
                          counterText: 'Senha Gerada',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        controller: _controladoremailparaenvioacesso,
                        decoration: InputDecoration(
                          hintText: 'Email Comercial',
                          counterText: 'Comercial para envio de acesso',
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
                        child: FloatingActionButton(
                      child: Icon(Icons.save),
                      onPressed: () {
                        final String data = _controladordata.text;
                        final String conta = _controladorconta.text;
                        final String contagrupo = _controladorcontagrupo.text;
                        final String contamatriz = _controladorcontamatriz.text;
                        final String razao = _controladorrazao.text;
                        final String bandeira = _controladorbandeira.text;
                        final String nomecomercial =
                            _controladornomecomercial.text;
                        final String tipo = _controladortipo.text;
                        final String cnpj = _controladorcnpj.text;
                        final String ie = _controladorie.text;
                        final String endereco = _controladorendereco.text;
                        final String cep = _controladorcep.text;
                        final String complemento = _controladorcomplemento.text;
                        final String bairro = _controladorbairro.text;
                        final String uf = _controladoruf.text;
                        final String cidade = _controladorcidade.text;
                        final String fone = _controladorfone.text;
                        final String fax = _controladorfax.text;
                        final String emailcomercial =
                            _controladoremailcomercial.text;
                        final String site = _controladorsite.text;
                        final String titular = _controladortitular.text;
                        final String representante =
                            _controladorrepresentante.text;
                        final String regiao = _controladorregiao.text;
                        final String setor = _controladorsetor.text;
                        final String regiaosetor = _controladorregiaosetor.text;
                        final String grupo = _controladorgrupo.text;
                        final String cat = _controladorcat.text;
                        final String tamshowroom = _controladortamshowroom.text;
                        final String primeironome =
                            _controladorprimeironome.text;
                        final String segundonome = _controladorsegundonome.text;
                        final String cpf = _controladorcpf.text;
                        final String cargo = _controladorcargo.text;
                        final String funcao = _controladorfuncao.text;
                        final String emailcomercialdepartamento =
                            _controladoremailcomercialdepartamento.text;
                        final String senhagerada = _controladorsenhagerada.text;
                        final String emailparaenviodeacesso =
                            _controladoremailparaenvioacesso.text;

                        final Cadastroempresa cadastroNovo = Cadastroempresa(
                            data,
                            conta,
                            contagrupo,
                            contamatriz,
                            razao,
                            bandeira,
                            nomecomercial,
                            tipo,
                            cnpj,
                            ie,
                            endereco,
                            cep,
                            complemento,
                            bairro,
                            uf,
                            cidade,
                            fone,
                            fax,
                            emailcomercial,
                            site,
                            titular,
                            representante,
                            regiao,
                            setor,
                            regiaosetor,
                            grupo,
                            cat,
                            tamshowroom,
                            primeironome,
                            segundonome,
                            cpf,
                            cargo,
                            funcao,
                            emailcomercialdepartamento,
                            senhagerada,
                            emailparaenviodeacesso);

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
