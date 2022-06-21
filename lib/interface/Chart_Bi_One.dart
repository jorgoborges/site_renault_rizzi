import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fwfh_webview/fwfh_webview.dart';
import 'package:flutter/cupertino.dart';


import '../interface/admin_scaffold.dart.dart';
import '../login/login.dart';


void main() => runApp(const Chart_Bi_One());

class Chart_Bi_One extends StatelessWidget {
  const Chart_Bi_One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gestão de Operação',
      home: Scaffold(
        appBar: AppBar(
            actions: [
              ElevatedButton.icon(
                onPressed: () => Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (_) => Tel_Senha())),
                icon: const Icon(Icons.arrow_circle_left_outlined),
                label: const Text('Voltar'),
              ),

            ],


          backgroundColor: Colors.black,
          title: Text('VWCO'),
        ),
        body: Center(
          child: HtmlWidget(
            '<iframe title="Acompanhamento de reuniões Mardisa" width="1140" height="541.25" src="https://app.powerbi.com/reportEmbed?reportId=1816f326-ad24-4c74-998f-11721c3ad328&autoAuth=true&ctid=bae03bf5-f801-4f8b-adba-c177d66c8180&config=eyJjbHVzdGVyVXJsIjoiaHR0cHM6Ly93YWJpLWJyYXppbC1zb3V0aC1iLXByaW1hcnktcmVkaXJlY3QuYW5hbHlzaXMud2luZG93cy5uZXQvIn0%3D" frameborder="0" allowFullScreen="true"></iframe>',
            factoryBuilder: () => MyWidgetFactory(),
          ),
        ),
      ),
    );
  }
}

class MyWidgetFactory extends WidgetFactory with WebViewFactory {}