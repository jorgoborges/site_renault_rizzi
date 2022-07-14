//EXCESSO DE VELOCIDADE

import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';
import 'package:flutter/cupertino.dart';
import 'dart:html' as html;

class oneLevelItem1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/oneLevelItem1',
      body: Container(
        height: 700,
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, top: 50),
        child: ElevatedButton(
          onPressed: () {
            html.window.open(
                'https://app.powerbi.com/reportEmbed?reportId=6858de8d-c097-4c80-992d-0622a033a470&autoAuth=true&ctid=bae03bf5-f801-4f8b-adba-c177d66c8180&config=eyJjbHVzdGVyVXJsIjoiaHR0cHM6Ly93YWJpLWJyYXppbC1zb3V0aC1iLXByaW1hcnktcmVkaXJlY3QuYW5hbHlzaXMud2luZG93cy5uZXQvIn0%3D',
                "_self");
          },
          child: Text("Acesso ao Power Bi"),
        ),
      ),
    );
  }
}
