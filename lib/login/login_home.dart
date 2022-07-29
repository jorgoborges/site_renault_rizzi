import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:auto_size_text/auto_size_text.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class LoginHome extends StatelessWidget {
  final TextEditingController _controladorEmail = TextEditingController();
  final TextEditingController _controladorSenha = TextEditingController();

  //final _formKey = GlobalKey<FormState>();
  // final _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> newlogin(BuildContext context) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: _controladorEmail.text, password: _controladorSenha.text);

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => SamplePagePortal()),
      );
    } catch (FirebaseAuthException) {
      const snackBar = SnackBar(
        content: Text('Autenticação Inválida.'),
        backgroundColor: const Color(0xFFB71C1C),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  bool isHiddenPassword = true;

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
          title: const Text('RMS  -  RIZZI MANAGEMENT SYSTEM'),
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
              height: 390,
              width: 1300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 130, right: 130),
            child: Container(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 400),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            style: TextStyle(color: Colors.black),
                            controller: _controladorEmail,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "WorkSansLight",
                                  fontSize: 17.0),
                              filled: true,
                              fillColor: Colors.white24,
                              hintText: "Email",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(90.0)),
                                  borderSide: BorderSide(
                                      color: Colors.white24, width: 0.9)),
                              prefixIcon: const Icon(
                                Icons.email,
                                color: const Color(0xff041e42),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    TextFormField(
                      obscureText: isHiddenPassword,
                      style: TextStyle(color: Colors.black),
                      controller: _controladorSenha,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontFamily: "WorkSansLight",
                            fontSize: 17.0),
                        filled: true,
                        fillColor: Colors.white24,
                        hintText: "Senha",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(90.0)),
                            borderSide:
                                BorderSide(color: Colors.white24, width: 0.9)),
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: const Color(0xff041e42),
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 15),
                    ),
                    SizedBox(
                      height: 25,
                      width: 100,
                      child: ElevatedButton(
                          child: AutoSizeText('Entrar',style: TextStyle(fontSize: 10)),
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xff041e42),
                            elevation: 15,
                            shape: const BeveledRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3))),
                          ),
                          onPressed: () => {newlogin(context)}),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        height: 25,
                        width: 800,
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(right: 20, left: 20, top: 1),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(Icons.whatsapp_outlined,
                                      size: 15, color: const Color(0xff007a33)),
                                ),
                                TextSpan(
                                    text: " + 55 (19) 3465-2318.",
                                    style: TextStyle(fontSize: 10)),
                              ],
                            ),
                            maxLines: 2,
                          ),
                        )),
                    SizedBox(
                        height: 25,
                        width: 800,
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(right: 20, left: 20, top: 1),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(Icons.email,
                                      size: 15, color: const Color(0xff007a33)),
                                ),
                                TextSpan(
                                    text: " contato@rizziconsulting.com.br",
                                    style: TextStyle(fontSize: 10)),
                              ],
                            ),
                            maxLines: 2,
                          ),
                        )),
                    SizedBox(
                        height: 25,
                        width: 800,
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(right: 20, left: 20, top: 1),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(Icons.location_on_outlined,
                                      size: 15, color: const Color(0xff007a33)),
                                ),
                                TextSpan(
                                    text:
                                        " Rua José Ferreira Aranha, 251 - Americana - SP",
                                    style: TextStyle(fontSize: 10)),
                              ],
                            ),
                            maxLines: 2,
                          ),
                        )),
                    SizedBox(
                        height: 25,
                        width: 800,
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(right: 20, left: 20, top: 1),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(Icons.gite_outlined,
                                      size: 15, color: const Color(0xff007a33)),
                                ),
                                TextSpan(
                                    text:
                                        " Rizzi Consulting Ⓡ 2000|2022 - Todos os Direitos Reservados.",
                                    style: TextStyle(fontSize: 10)),
                              ],
                            ),
                            maxLines: 2,
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
