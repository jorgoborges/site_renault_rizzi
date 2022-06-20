import 'package:flutter/material.dart';

import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/',
      body: Container(
        color: Color(0xFF041e42),
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image(
                image: AssetImage("images/logotrans.jpeg"),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
