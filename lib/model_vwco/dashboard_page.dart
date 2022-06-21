
import 'package:flutter/material.dart';

import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/thirdLevelItem2',
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