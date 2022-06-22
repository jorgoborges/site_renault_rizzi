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
          'https://snz04pap002files.storage.live.com/y4mLKGL1H6nrq56KI-hd8bvO4zBzKECOhu_SdcxBH6GmQqxgIH2YaAd9dqEXuTeIu8gOvgzpnb7lasK8alAJXmbrzw68s0ryoHwIB5Ps4yBVUjKeq4k3uT5ekRL6xPO3uCWKfBR6s31YrP4aqG6oGvjqCLJoVLT_uNA8mgivaqMfDNBayH1m4o7-XuY-fy4Kn-Cz8y48-cjxXX5JKHUaaHA6eOnyKNhAm8lc_7e_YTRXYQ?encodeFailures=1&width=1347&height=709',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
