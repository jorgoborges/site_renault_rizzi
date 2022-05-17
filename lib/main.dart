import 'package:flutter/material.dart';

import 'package:site_renault_rizzi/interface/Tela_Login.dart';


void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp(
  // options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(Initial());
}

class Initial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: TelaInicialLogin());
  }
}
