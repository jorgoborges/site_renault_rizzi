import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class SecondLevelItem4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/secondLevelItem4',
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, top: 10),
        child: Image.network(
          'https://snz04pap002files.storage.live.com/y4mpBirsDPWsuOKmWmuFY9vhoBI3HtB3T0k40Z13CBGD8bEO5ClPziSlMtkVYON4AydzLsJvc_1y5CSiGPqzHwpWinq_jP9x_po9i54NML7_yy9PHCutrbBtLOCB4ioJCFQKcTcENggHs5YmBpQkHUv-bSDXv33KYgZb2oiYl4y34_OoiSyEH0gkpOJNt5PG6eE80uqKxdqx3FR0jbtfzwIIxvGNvW5gZRmQDERRwyWYM4?encodeFailures=1&width=1572&height=842',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
