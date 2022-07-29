import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/homeoardPage',
      body: Container(
        color: const Color(0xFF041e42),
        child: SizedBox(
          width: double.infinity,
          height: 695,
          child: Image(
              image: AssetImage("assets/images/image3.png.png"),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
