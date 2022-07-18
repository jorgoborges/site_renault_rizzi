import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site_renault_rizzi/login/login_home.dart';
import 'package:site_renault_rizzi/provider/users.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Users()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginHome(),
      ),
    );
  }
}
