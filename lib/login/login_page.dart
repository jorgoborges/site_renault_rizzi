import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';
import 'package:site_renault_rizzi/interface/class_senha.dart';

import 'package:flutter/cupertino.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _controladorEmail = TextEditingController();
  final TextEditingController _controladorSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          actions: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      "images/logo.PNG",
                      fit: BoxFit.fill,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
            ),
          ],
          backgroundColor: const Color(0xff041e42),
          title: const Text('Portal 4.0'),
        ),
        body: Stack(children: [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset(
                "images/login.PNG",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  child: Container(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                          ),
                          Column(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 130,
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                child: Column(
                                  children: <Widget>[
                                    TextField(
                                        maxLines: null,
                                        maxLength: 50,
                                        controller: _controladorEmail,
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                        decoration: InputDecoration(
                                          hintText: 'Email Comercial',
                                          labelStyle: TextStyle(
                                              fontSize: 20, color: Colors.red),
                                          border: OutlineInputBorder(),
                                        ),
                                        keyboardType:
                                            TextInputType.emailAddress),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(20),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                child: Column(
                                  children: <Widget>[
                                    TextField(
                                      maxLength: 10,
                                      controller: _controladorSenha,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                      decoration: InputDecoration(
                                        hintText: 'Senha',
                                        labelStyle: TextStyle(
                                            fontSize: 20, color: Colors.red),
                                        border: OutlineInputBorder(),
                                      ),
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      obscureText: true,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(70),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                child: Container(
                                  padding: EdgeInsets.only(top: 3, left: 3),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: MaterialButton(
                                    minWidth: 150,
                                    height: 60,
                                    onPressed: () =>
                                        Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (_) => SamplePagevwco()),
                                    ),
                                    color: Color(0xff041e42),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(60)),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Botão provisório para criar lista senha-user

                          Row(
                              children: [
                                Expanded(
                                    child: FloatingActionButton(
                                  child: Icon(Icons.login_outlined),
                                  onPressed: () {
                                    final String Email = _controladorEmail.text;
                                    final String Senha = _controladorSenha.text;

                                    final SenhaLogin novoLogin =
                                        SenhaLogin(Email, Senha);

                                    print(novoLogin);
                                  },
                                )),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center),

                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                    height: 40,
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}

Widget makeInput({label, obsureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        ),
      ),
      SizedBox(
        height: 30,
      )
    ],
  );
}
