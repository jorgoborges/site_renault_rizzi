import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/homeoardPage',
      body: Container(
          height: 300,
          width: 300,
          padding: EdgeInsets.only(left: 100, top: 50),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Container(
                width: 50,
              )),
              Row(
                  children: [
                    Expanded(
                      child: IconButton(
                        tooltip: 'Rizzi Academy',
                        iconSize: 100,
                        icon: const Icon(Icons.school_outlined),
                        color: Colors.black,
                        onPressed: () {
                          html.window.open(
                              'https://www.rizziacademy.com.br/login/index.php/',
                              "_blank");
                        },
                      ),
                    ),
                    Expanded(
                        child: Container(
                      width: 80,
                    )),
                    Expanded(
                      child: IconButton(
                        tooltip: 'Rizzi Consulting',
                        iconSize: 100,
                        icon: const Icon(Icons.home_outlined),
                        color: Colors.black,
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
