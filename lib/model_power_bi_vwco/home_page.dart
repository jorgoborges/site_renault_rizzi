import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/homeoardPage',
      body: Container(
          height: 600,
          width: 600,
          padding: EdgeInsets.only(left: 300, top: 200),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Text('Bem Vindo ao Portal'),

              ),

            ],
          )),
    );
  }
}
