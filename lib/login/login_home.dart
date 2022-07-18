import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class LoginHome extends StatelessWidget {
  final TextEditingController _controladorEmail = TextEditingController();
  final TextEditingController _controladorSenha = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> newlogin(BuildContext context) async {
    try {
    await  _auth.signInWithEmailAndPassword(
          email: _controladorEmail.text, password: _controladorSenha.text);

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => SamplePagePortal()),
      );
    } catch (FirebaseAuthException) {

      const snackBar = SnackBar(
        content: Text('Autenticação inválida.'),
      );

      print('Senha invalida');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: Image(
                      image: AssetImage("assets/images/logo.PNG"),
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
              child: Image(
                image: AssetImage("assets/images/login.PNG"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5, top: 100),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                style: TextStyle(color: Colors.black87),
                                controller: _controladorEmail,
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "WorkSansLight",
                                      fontSize: 15.0),
                                  filled: true,
                                  fillColor: Colors.white24,
                                  hintText: "E-mail",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(90.0)),
                                      borderSide: BorderSide(
                                          color: Colors.white24, width: 0.5)),
                                  prefixIcon: const Icon(
                                    Icons.email,
                                    color: Colors.white,
                                  ),
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5, top: 50),
                        ),
                        TextFormField(
                          style: TextStyle(color: Colors.black87),
                          controller: _controladorSenha,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontFamily: "WorkSansLight",
                                fontSize: 15.0),
                            filled: true,
                            fillColor: Colors.white24,
                            hintText: "Senha",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(90.0)),
                                borderSide: BorderSide(
                                    color: Colors.white24, width: 0.5)),
                            prefixIcon: const Icon(
                              Icons.lock_outline,
                              color: Colors.white,
                            ),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5, top: 140),
                        ),
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: new FloatingActionButton(
                              backgroundColor: Colors.white30,
                              child: Text(
                                "Entrar",
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.white),
                              ),
                              onPressed: () => {newlogin(context)}),
                        ),
                      ],
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
