import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class SecondLevelItem2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/secondLevelItem2',
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, top: 10),
        child: Image.network(
          'https://snz04pap002files.storage.live.com/y4mORv4z5GsrWrt2PSf4JJWoqLi0tp7HGpwbYB_xdpXXdKPjui6drT15LcJOnVa0qoXwnnl2Lb5hPVx2m4IwmdxyNUZZN2XOt_nycnMdB8srJOhJjjGUIHt3xZMpzSZW63GlIwA1sAez1UfwXCPSMJxPBg4UJcpQEtX8Iak3Ga5nqICR2mVaoJMiSrQv-rwbnnwzQL_pSX9jGh4y0VCfN90SLeMzbWDWmvL-jLOIfDV7JU?encodeFailures=1&width=1535&height=842',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
