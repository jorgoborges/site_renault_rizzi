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
          'https://snz04pap002files.storage.live.com/y4mUIMOU51w8Prh6kW8gzSlFcKR7WOXZbNVJhR9GIxmtVpagbPF1OVB9-nwV-lYzhOcJ-J083dqBDx--7pDRZ_n_enRmsGGJLmCABinl-7dn0cn4cxYKZzZ3Wmlm72230IZSmDy9pNyTvUzrRU64idrj3BbSB_d9QmGsCP_CFqZvH2z7oIboo0TPcG_lE_s3zsH8dAlnCRxExfPFfGswT0G4i51ig8qvPEtk9sjC529MTQ?encodeFailures=1&width=1691&height=821',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
