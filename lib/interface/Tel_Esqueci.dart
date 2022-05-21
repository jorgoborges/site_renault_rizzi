import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:site_renault_rizzi/interface/Tel_Senha.dart';

void main() {
  runApp(const Tel_Esqueci());
}

class Tel_Esqueci extends StatelessWidget {
  const Tel_Esqueci({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

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

        backgroundColor: const Color(0xff1b5e20),
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
                      MaterialPageRoute(builder: (context) => Tel_Senha()));
                },
              ),

              const SizedBox(
                height: 2,
              ),

              //For phone Button
              FlutterSocialButton(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tel_Senha()));
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Tel_Senha()));
                    },
                    mini: true,
                  ),
                  FlutterSocialButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Tel_Senha()));
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
