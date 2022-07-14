import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(

      route: '/homeoardPage',
      body: Container(
        height: 700,
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, top: 50),
        child: ElevatedButton(
          onPressed: () {
            html.window.open(
                'https://rizziconsulting.com.br/',
                "_self");
          },
          child: Text('Rizzi'),
        ),
      ),
    );
  }
}


