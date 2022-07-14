import 'package:flutter/material.dart';

import 'package:site_renault_rizzi/login/login_page.dart';

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

        home: LoginPage());
  }
}
