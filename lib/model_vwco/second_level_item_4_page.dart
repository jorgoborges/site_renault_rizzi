import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class SecondLevelItem4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/secondLevelItem4',
      body: Container(
        width: 900,
        height: 600,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Image.network(
          'https://snz04pap002files.storage.live.com/y4ms7kaaRU-s3JksDHBIWBSu629hprevsrylHr9O6lPiqnHoM4WpSUO7xVip7tAffmLS0LCQTDuYrUvcm__w7ZAUZwwt9ggCBnKtdA5VKUrhsMzbVxZ4tIelMcO6UFAWmvN2nfLpXT9kEb_Gx5YRd4XNdEwSMcZ1RLT9kmiWb_bnFhZsren1VNuR6g8SY6-erC0IXKQ__zm01AdH-CQJaxdc_lzzf3D8Dokf0QN63bet84?encodeFailures=1&width=826&height=468',
          fit: BoxFit.fill,

        ),
      ),
    );
  }
}
