import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class SecondLevelItem6Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/secondLevelItem6',
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, top: 10),
        child: Image.network(
          'https://snz04pap002files.storage.live.com/y4m48J5iv04l033QH9-miy5xz6IsAgVT8v0pmv-8mGaJ0O788OfXb9vICTrCychKsW2wBdmOR6UUCHhG0wbm8tjPptvk7zMYASbm_ANmDOKav-6g1KNdG8t1qB10oy1_n7je7h6oNBUnxXp9FBSLaSXMHl9p_7tV1-xddXFm2Tx5KTJBC8KcTpEe_a3xpOiy3Igt0WebcL3RR5CgVk5yk0N-XjpzaVUv3kr48hCpZLzN3A?encodeFailures=1&width=1406&height=712',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
