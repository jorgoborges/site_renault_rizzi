import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class SecondLevelItem3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/secondLevelItem3',
      body: Container(
        width: 900,
        height: 600,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Image.asset(
          "images/tres.jpeg",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
