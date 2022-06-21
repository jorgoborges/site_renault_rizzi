import 'package:flutter/material.dart';

import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

import 'package:flutter/cupertino.dart';

class SecondLevelItem1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/secondLevelItem1',
      body: Container(
        width: 900,
        height: 600,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Image.network(
          'https://snz04pap002files.storage.live.com/y4mWpWoY3exaT-fpJnxxseCa6p6jf8cqd1AlSwphknSNXQgPrOokLgemVh_N-7ZmjYbHZVbyBvqonBxqYgE7EaD9-1u_vXtWc_R5uneSVLK_M8H9BsASK9HrTYmmqEWnwlndul_ztkejxIYNIcyn_qG_xiGxNXxoIpg90VrnJHEMH-43xwKbR6LkBkEMvOdHm7jH04TabtIWd2lVbLL48q5BhKrW6cBpa6gZmyflVIB2Is?encodeFailures=1&width=829&height=464'  ,
          fit: BoxFit.fill,

        ),
      ),
    );
  }
}
