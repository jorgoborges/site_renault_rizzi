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
          'https://snz04pap002files.storage.live.com/y4mJUlAuk4fI5D8oUdaCqD9ORxPqhp2phjWpYN2m9PfTUBiw1YQCEXxs0CxhuEBdMmsl7yikFXkZ2xCxoOTQnUk5MjrHP_OjfZDPpob2d7Ll-iM6wAU5Nf1_I2fOQvhCCInUd2EUMoKqVJcG35anZHTJIRlyaMBt2LjjwqxmA3twB9oARD3P4F1w10L3am12ev5RH2DMLb-ax-82TIChMSOc4N8X4iGZ9hFpekcmdncnDA?encodeFailures=1&width=1294&height=709',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
