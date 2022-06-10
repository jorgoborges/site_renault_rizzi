import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/Tel_Senha.dart';


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
    return new MaterialApp(

      debugShowCheckedModeBanner: false,

        theme: ThemeData(primarySwatch: Colors.red), home: Tel_Senha());
  }
}
