import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/homeoardPage',
      body: Container(
        height: 695,
        color: const Color(0xFFFFFFFF),
        alignment: Alignment.center,
        child: Image(
            image: AssetImage("assets/images/image3.png.png"),
            fit: BoxFit.fill),
      ),
    );
  }
}
