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
            width: 1000,
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
                      Flexible(
                          child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                          left: 80,
                          top: 420,
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
                      Flexible(
                          child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                          right: 80,
                          top: 420,
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
                      Flexible(
                          child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(right: 20, left: 20, top: 40),
                        child: new FloatingActionButton(
                            backgroundColor: const Color(0xff041e42),
                            child: Text(
                              "Entrar",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            ),
                            onPressed: () => {newlogin(context)}),
                      )),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(right: 20, left: 20, top: 5),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.whatsapp_outlined,
                                    size: 25,
                                    color: const Color(0xff007a33),
                                  ),
                                ),
                                TextSpan(
                                  text: "+ 55 (19) 3465-2318.",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(right: 20, left: 20, top: 5),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(Icons.email,
                                      size: 25, color: const Color(0xff007a33)),
                                ),
                                TextSpan(
                                  text: "contato@rizziconsulting.com.br",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(right: 20, left: 20, top: 5),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(Icons.location_on_outlined,
                                      size: 25, color: const Color(0xff007a33)),
                                ),
                                TextSpan(
                                  text:
                                      "Rua José Ferreira Aranha, 251 - Americana - SP",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(right: 20, left: 20, top: 5),
                          child: Text(
                            'Rizzi Consulting Ⓡ 2000|2022 - Todos os Direitos Reservados.',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
