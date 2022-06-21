import 'package:flutter/material.dart';

import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class ThirdLevelItem1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/thirdLevelItem1',
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child: Text(
          'Third Level Item 1',

        ),
      ),
    );
  }
}