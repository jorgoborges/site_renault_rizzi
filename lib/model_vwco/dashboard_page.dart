import 'package:flutter/material.dart';

import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/DashboardPage',
      body: Container(

        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Image.network(
          'https://snz04pap002files.storage.live.com/y4mCdQRkySHd3dVZLkDROmmQUbVdV8fqpQ97Dgwx_9i4hu-AiTmpwvVnWMqy1kNy3jxI-NxZnM6ST-z_cOw5vhk_je9bmj_oaWI2lOhJEoOZ9vN4GqZXr64T805dPniDDpi-CXCMLo-ZqyLslHS3kkTwrUeqwHfLJ_umr_BfEaRdDsIUdEOOztm0dk3C0B4yb0NF1k6Uvn3GNLZGIyXSRsF1VEVTZqkBBnomI_Hs-zQ06o?encodeFailures=1&width=1258&height=428',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
