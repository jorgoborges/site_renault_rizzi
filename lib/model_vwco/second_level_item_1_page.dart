import 'package:flutter/material.dart';

import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

import 'package:flutter/cupertino.dart';

class SecondLevelItem1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/secondLevelItem1',
      body: Container(

        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, top:10),
        child: Image.network(
          'https://snz04pap002files.storage.live.com/y4mspK2xLddOnEhkdNgMHNX6dryArVxMGXbBvZY1k1E94w6VmZMMb2QZXbfkBM00fAAf_3Atb1QHkXnoxsZFZSDgYO7hnFK8UGU_H1EU0o6SGuU6KrdHIHFIwJt7WY68Bn1S2EPcY96ryDnQHi7uRjhVRn0ef8asTq9ZT_AAPaBDZYIuf8IlrxpqOvfJ4__GNAOe1ws8RvHlaEr911bWuqe1_PD0Ma-ZpoDlCU0RYttSUM?encodeFailures=1&width=1633&height=842',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
