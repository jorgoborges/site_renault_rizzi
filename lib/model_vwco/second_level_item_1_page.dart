import 'package:flutter/material.dart';

import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

import 'package:flutter/cupertino.dart';

class SecondLevelItem1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/SecondLevelItem1Page',
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child: Text(
          'Dashboard',
        ),
      ),
    );
  }
}
