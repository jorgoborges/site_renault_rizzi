
import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';
import 'package:flutter/cupertino.dart';
import 'package:tabbed_view/tabbed_view.dart';




class zeroLevelItem2Page extends StatelessWidget {


  TextEditingController tc1 = TextEditingController();
  TextEditingController tc2 = TextEditingController();
  TextEditingController tc3 = TextEditingController();
  TextEditingController tc4 = TextEditingController();



  @override


  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/zeroLevelItem2',
      body: Container(
        width: 800,
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, top: 100),
        child: SingleChildScrollView(
            child: Column(


                children: [],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly)),
      ),
    );
  }
}
