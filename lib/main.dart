import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/Tel_Menu.dart';

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
        theme: ThemeData(primarySwatch: Colors.green), home: Tel_Menu());
  }
}
