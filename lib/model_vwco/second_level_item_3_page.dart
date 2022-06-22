import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class SecondLevelItem3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/secondLevelItem3',
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, top: 10),
        child: Image.network(
          'https://snz04pap002files.storage.live.com/y4mbhxr5XCBwmVcJktHJPLcMpUH5cxSvRMQl7zgL8i8WHsy_h3u5Kji4OdZLEYMew8aq6LIzXp_Cit3p6s2VH1LgUQtmbTAMRLa3aUKVQxfLbCVgOGGVYBLm8wQEWDRtmHJsR_BqsLGYnTZlcVEG4xCj8613TIRzWHnuWPsxm9TTz_ZpfPMfMyjnjS9lfc_k6sK54bs_acVPF4UbOvUtvAAlmka6sF3T0XbYm_ywynFa14?encodeFailures=1&width=1298&height=709',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
