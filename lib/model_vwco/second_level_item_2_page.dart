import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:site_renault_rizzi/interface/chart_bi_one.dart';

class SecondLevelItem2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/secondLevelItem2',
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child: HtmlWidget(
          '<iframe title="Acompanhamento de reuniões Mardisa" width="1140" height="541.25" src="https://app.powerbi.com/reportEmbed?reportId=1816f326-ad24-4c74-998f-11721c3ad328&autoAuth=true&ctid=bae03bf5-f801-4f8b-adba-c177d66c8180&config=eyJjbHVzdGVyVXJsIjoiaHR0cHM6Ly93YWJpLWJyYXppbC1zb3V0aC1iLXByaW1hcnktcmVkaXJlY3QuYW5hbHlzaXMud2luZG93cy5uZXQvIn0%3D" frameborder="0" allowFullScreen="true"></iframe>',
          factoryBuilder: () => MyWidgetFactory(),
        ),
      ),
    );
  }
}
