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

      print('Senha invalida');
    }
  }

  bool _verPassword = false;

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
          const SizedBox.expand(
            child: FittedBox(
              child: Image(
                image: AssetImage("assets/images/image2.png.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 93),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          style: TextStyle(color: Colors.black87),
                          controller: _controladorEmail,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontFamily: "WorkSansLight",
                                fontSize: 17.0),
                            filled: true,
                            fillColor: Colors.white24,
                            hintText: "E-mail",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(90.0)),
                                borderSide: BorderSide(
                                    color: Colors.white24, width: 0.5)),
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.black87),
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
                                BorderSide(color: Colors.white24, width: 0.5)),
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: Colors.black,
                        ),
                        suffixIcon: GestureDetector(
                          child: Icon(
                            _verPassword == false
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.white,
                          ),

                          //onTap: ()
                          //setState(() {
                          // _verPassword = !_verPassword;
                          //     });
                          //     },
                        )),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, top: 100),
                  ),
                  SizedBox(
                    height: 80,
                    width: 90,
                    child: new FloatingActionButton(
                        backgroundColor: Colors.black,
                        child: Text(
                          "Entrar",
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                        onPressed: () => {newlogin(context)}),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
