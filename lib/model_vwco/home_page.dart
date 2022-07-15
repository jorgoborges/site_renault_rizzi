import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/homeoardPage',
      body: Container(
          height: 400,
          width: 400,
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Expanded(child: Container()),
              Row(
                  children: [
                    Expanded(
                      child: IconButton(
                        tooltip: 'Rizzi Academy',
                        iconSize: 100,
                        icon: const Icon(Icons.school_outlined),color: Colors.lightGreen,
                        onPressed: () {
                          html.window.open(
                              'https://www.rizziacademy.com.br/login/index.php/',
                              "_blank");
                        },
                      ),
                    ),
                    Expanded(
                        child: Container(
                      width: 50,
                    )),
                    Expanded(
                      child: IconButton(
                        tooltip: 'Rizzi Consulting',
                        iconSize: 100,
                        icon: const Icon(Icons.home_outlined),color: Colors.greenAccent,
                        onPressed: () {
                          html.window.open(
                              'https://rizziconsulting.com.br/', "_blank");
                        },
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center),
            ],
          )),
    );
  }
}
