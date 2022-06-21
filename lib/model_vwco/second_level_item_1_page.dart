import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';


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
        child: Image.network('https://lh3.googleusercontent.com/B6_7mEpzKLNrjUkc79O-etBK7vnGZOK39CQw7p3oYj2Tf4x3QBcsxcOmYuIxMLfEMnEvZJxjfq4-D1hrZzG92llXbrKkKCPilKhKFb_XlzF7aHuDpY-HUj_xNx_6MVMADAcda2xCXj3v1ITvrHAzThL10ivs6-DgdUvUF3kstYGaiTeqwkNbZmhccQ0A1fFnjDdA4W2TIPy5P65RIsnOWJUDqgo4ivqtbqyWdHlbX6HWno7tlN-fN7V9gAfAey7YB7-EUIunWBuEJHDXOaB_qvP4XY6UeT3Xuqk274coMBMnR57bulxtTZJ84iRN-AlXy_9cXcInm9zhs2s9EsMHJaBWQzyCl6RN49hgzG9Y-CFzpsL7BYiO3tb_zQl8Hl2N5tm6J0RtuWCHq5j0OT39SfEIB1pHBw0gLlPjOcrpHR71y9sQLyi-6QfPh0UbzhW7zMuVUEJp_HmD9AAmheTMzuq7kIEqQxrUvVCnh9XRm6wRwbwQFONL6dlgG1ap3_kVAj5vV2uYQRELNhPbha0m96My60mSHbxyI5axNPvytA3KuVEaVcPFrtCPMBfv6lAh7Hc8kCIgClvimK_5VZQBLRLnPamU3uv0mDbinl7hNeair8wfaMV8NPKeXkfjdZXhZ_mKCY0GiMR-059R9EFz0worKYrjNtaSx0E1ct7YdOnqUHWN2eWhXiyEzucg5DluxUlB8PQFI86dEGqum1PeptnzJLTB-fwz2ya1tSdWRrmU0szKt8730FD5QgIWo_gYPZUu4NWJJeanv4uKPMXGZlRsK-hwBeRGskgMe9iJj2hc7zrbmUNJH2JPOeDj3zi2GejW=w1384-h750-no?authuser=1',
          fit: BoxFit.fill,
          width: 60,
          height: 60,
        ),
      ),
    );
  }
}
