import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:site_renault_rizzi/interface/GerarSenha.dart';

void main() {
  runApp(const TelaInicialLogin());
}

class TelaInicialLogin extends StatelessWidget {
  const TelaInicialLogin({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //For default Button
              FlutterSocialButton(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GerarSenha()));
                },
              ),

              const SizedBox(
                height: 2,
              ),

              //For phone Button
              FlutterSocialButton(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GerarSenha()));
                },
                buttonType: ButtonType.phone,
              ),

              const Divider(
                color: Colors.black,
                thickness: 2.5,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlutterSocialButton(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GerarSenha()));
                    },
                    mini: true,
                  ),
                  FlutterSocialButton(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GerarSenha()));
                    },
                    mini: true,
                    buttonType: ButtonType.phone,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
