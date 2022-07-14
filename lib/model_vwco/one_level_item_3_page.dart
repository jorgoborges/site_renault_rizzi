//PLANO CONTRATO DE MANUTENÇÃO
import 'package:flutter/material.dart';
import 'package:fwfh_webview/fwfh_webview.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:flutter/cupertino.dart';

class oneLevelItem3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/oneLevelItem3',
      body: Container(
        height: 700,
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, top: 50),
        child: HtmlWidget(
          '<iframe title="Torre_de_Controle_Cequip" width="1140" height="541.25" src="https://app.powerbi.com/reportEmbed?reportId=fe6de127-f910-4618-a02b-fbd48ed4d3b1&autoAuth=true&ctid=bae03bf5-f801-4f8b-adba-c177d66c8180&config=eyJjbHVzdGVyVXJsIjoiaHR0cHM6Ly93YWJpLWJyYXppbC1zb3V0aC1iLXByaW1hcnktcmVkaXJlY3QuYW5hbHlzaXMud2luZG93cy5uZXQvIn0%3D" frameborder="0" allowFullScreen="true"></iframe>',
          factoryBuilder: () => MyWidgetFactory(),
        ),
      ),
    );
  }
}

class MyWidgetFactory extends WidgetFactory with WebViewFactory {}