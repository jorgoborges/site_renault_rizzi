import 'package:flutter/material.dart';

import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/homeoardPage',
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, top: 150),
        child: Text('Bem Vindo'
        ),
      ),
    );
  }
}
