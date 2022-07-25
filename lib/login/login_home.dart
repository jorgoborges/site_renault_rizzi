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
      await _auth.signInWithEmailAndPassword(
          email: _controladorEmail.text, password: _controladorSenha.text);

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => SamplePagePortal()),
      );
    } catch (FirebaseAuthException) {
      const snackBar = SnackBar(
        content: Text('Autenticação inválida.'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
                    image: AssetImage("assets/images/image1.png.png"),
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
        title: const Text('RMS - RIZZI MANAGEMENT SYSTEM'),
      ),
      body: Stack(children: [
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(
            top: 3,
          ),
          child: Image(
            image: AssetImage("assets/images/image2.png.png"),
            fit: BoxFit.fill,
            width: 900,
            height: 400,
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                          left: 80,
                          top: 290,
                        ),
                        child: TextField(
                          controller: _controladorEmail,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white24,
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(90.0)),
                                  borderSide: BorderSide(
                                      color: Colors.red, width: 0.5)),
                              prefixIcon: const Icon(
                                Icons.email,
                                color: Colors.black,
                              )),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      )),
                      Padding(
                          padding: EdgeInsets.only(
                        right: 20,
                      )),
                      Expanded(
                          child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                          right: 80,
                          top: 290,
                        ),
                        child: TextField(
                          controller: _controladorSenha,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white24,
                            hintText: 'Senha',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(90.0)),
                                borderSide: BorderSide(
                                    color: Colors.white24, width: 0.5)),
                            prefixIcon: const Icon(
                              Icons.lock_outline,
                              color: Colors.black,
                            ),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                        ),
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(right: 20, left: 20, top: 50),
                        child: new FloatingActionButton(
                            backgroundColor: Colors.black,
                            child: Text(
                              "Entrar",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            ),
                            onPressed: () => {newlogin(context)}),
                      )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
