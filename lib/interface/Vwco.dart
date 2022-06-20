import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';
import 'package:site_renault_rizzi/interface/grid_demo_rizzi.dart';
import 'package:url_launcher/url_launcher.dart';

import 'chart_bi_one';

void main() {
  runApp(Vwco());
}

class Vwco extends StatelessWidget {
  final _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          actions: [
            TextButton(
              onPressed: () async {
                const url = 'https://www.vwco.com.br/';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Não foi possível';
                }
                //logic  goes here
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(15),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.directions_bus_outlined, color: Color(0xFFECEFF1)),
                  SizedBox(width: 20.0),
                  Text('vwco.com.br',
                      style: TextStyle(
                          color: Color(0xFFECEFF1),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            TextButton(
              onPressed: () async {
                const url = 'https://rizziconsulting.com.br/';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Não foi possível';
                }
                //logic  goes here
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(15),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.home_outlined, color: Color(0xFFECEFF1)),
                  SizedBox(width: 20.0),
                  Text('Rizziconsulting.com.br',
                      style: TextStyle(
                          color: Color(0xFFECEFF1),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            TextButton(
              onPressed: () async {
                const url = 'https://www.rizziacademy.com.br/';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Não foi possível';
                }
                //logic  goes here
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(15),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.school_outlined, color: Color(0xFFECEFF1)),
                  SizedBox(width: 20.0),
                  Text('Rizziacademy.com.br',
                      style: TextStyle(
                          color: Color(0xFFECEFF1),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            TextButton(
              onPressed: () async {
                const url =
                    'https://www.google.com/maps/place/Rizzi+Consulting/@-22.7436674,-47.3365886,17z/data=!3m1!4b1!4m5!3m4!1s0x94c8909475c5b495:0x4a88399fc4515adc!8m2!3d-22.7436674!4d-47.3343999';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Não foi possível';
                }
                //logic  goes here
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(15),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.location_on_outlined, color: Color(0xFFECEFF1)),
                  SizedBox(width: 20.0),
                  Text('Maps',
                      style: TextStyle(
                          color: Color(0xFFECEFF1),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ],
          backgroundColor: Colors.black,
          title: Text(
              'Ola Fiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiooooooooooooooooooooooooooooooottttttteeeeee!'),
        ),
        body: PlutoMenuBarDemo(scaffoldKey: _scaffoldKey),
      ),
    );
  }
}

class PlutoMenuBarDemo extends StatelessWidget {
  final scaffoldKey;

  PlutoMenuBarDemo({
    this.scaffoldKey,
  });

  void message(context, String text) {
    scaffoldKey.currentState.hideCurrentSnackBar();

    final snackBar = SnackBar(
      content: Text(text),
    );

    Scaffold.of(context).showSnackBar(snackBar);
  }

  List<MenuItem> getMenus(BuildContext context) {
    return [
      MenuItem(
        title: 'Menu',
        icon: Icons.people,
        children: [
          MenuItem(
            title: 'Meu Cadastro',
            onTap: () => message(context, 'Menu 1-1-1 tap'),
            children: [
              MenuItem(
                  title: 'Texto',
                  onTap: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => MyApp()))),
            ],
          ),
          MenuItem(
            title: 'Pag/2',
            onTap: () => message(context, 'Menu 1-1-2 tap'),
          ),
          MenuItem(
            title: 'Pag/3',
            onTap: () => message(context, 'Menu 1-1-2 tap'),
          ),
        ],
      ),
      MenuItem(
        title: 'Control Tower',
        icon: Icons.home,
        children: [
          MenuItem(
            title: '* Gestão de operação motorista',
            onTap: () => message(context, 'Menu 1-1 tap'),
            children: [
              MenuItem(
                title: 'Excesso de Velocidade',
                onTap: () => message(context, 'Menu 1-1-1 tap'),
                children: [
                  MenuItem(
                      title: '1-1DasbBoard/Pesquisa',
                      onTap: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => Chart_Bi_One()))),
                ],
              ),
              MenuItem(
                title: 'Marcha Lenta',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
              MenuItem(
                title: 'Veíc Engrenado',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
              MenuItem(
                title: 'Condução Vel.Cruzeiro',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
              MenuItem(
                title: 'Previsão',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
              MenuItem(
                title: 'Condução Trecho Serra',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
            ],
          ),
          MenuItem(
            title: '**Gestão Comb. ARLA',
            onTap: () => message(context, 'Menu 1-2 tap'),
            children: [
              MenuItem(
                title: 'Extratificação Modelo',
                onTap: () => message(context, 'Menu 1-1-1 tap'),
                children: [
                  MenuItem(
                    title: '1-1DasbBoard/Pesquisa',
                    onTap: () => message(context, 'Menu 1-1-1-1 tap'),
                  ),
                ],
              ),
              MenuItem(
                title: 'Consumo Km Frota',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
              MenuItem(
                title: 'Top 10 maior Consumo',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
              MenuItem(
                title: 'Aplic check list Consumo',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
              MenuItem(
                title: 'Treinamento Instrutor Oper',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
              MenuItem(
                title: 'Acompanhamento Consumo',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
            ],
          ),
          MenuItem(
            title: '***Gestão Manutenção',
            onTap: () => message(context, 'Menu 1-2 tap'),
            children: [
              MenuItem(
                title: 'Monitoramento Ativos',
                onTap: () => message(context, 'Menu 1-1-1 tap'),
                children: [
                  MenuItem(
                    title: 'Plano Contrato',
                    onTap: () => message(context, 'Menu 1-1-1-1 tap'),
                  ),
                ],
              ),
              MenuItem(
                title: 'Plan Manutenções',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
              MenuItem(
                title: 'Performace Motoristas',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
              MenuItem(
                title: 'Monitoramento Disponibilidade',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
            ],
          ),
        ],

        /////// divisão
      ),
      MenuItem(
        title: '1-Gestão VN',
        icon: Icons.insert_chart_outlined,
        children: [
          MenuItem(
            title: 'Pag/1',
            onTap: () => message(context, 'Menu 1-1-1 tap'),
            children: [
              MenuItem(
                  title: '1-1DasbBoard/Pesquisa',
                  onTap: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => Chart_Bi_One()))),
            ],
          ),
          MenuItem(
            title: 'Pag/2',
            onTap: () => message(context, 'Menu 1-1-2 tap'),
          ),
          MenuItem(
            title: 'Pag/3',
            onTap: () => message(context, 'Menu 1-1-2 tap'),
          ),
          MenuItem(
            title: 'Pag/4',
            onTap: () => message(context, 'Menu 1-1-2 tap'),
          ),
          MenuItem(
            title: 'Pag/5',
            onTap: () => message(context, 'Menu 1-1-2 tap'),
          ),
        ],
      ),
      MenuItem(
        title: '2-Gestão PV',
        icon: Icons.insert_chart_outlined,
        children: [
          MenuItem(
            title: 'Pag/1',
            onTap: () => message(context, 'Menu 1-1-1 tap'),
            children: [
              MenuItem(
                  title: '1-1DasbBoard/Pesquisa',
                  onTap: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => Chart_Bi_One()))),
            ],
          ),
          MenuItem(
            title: 'Pag/2',
            onTap: () => message(context, 'Menu 1-1-2 tap'),
          ),
          MenuItem(
            title: 'Pag/3',
            onTap: () => message(context, 'Menu 1-1-2 tap'),
          ),
          MenuItem(
            title: 'Pag/4',
            onTap: () => message(context, 'Menu 1-1-2 tap'),
          ),
          MenuItem(
            title: 'Pag/5',
            onTap: () => message(context, 'Menu 1-1-2 tap'),
          ),
        ],
        onTap: () => message(context, 'Gestão PV'),
      ),
      MenuItem(
        title: '3-Gestão SN',
        icon: Icons.insert_chart_outlined,
        children: [
          MenuItem(
            title: 'Pag/1',
            onTap: () => message(context, 'Menu 1-1-1 tap'),
            children: [
              MenuItem(
                  title: '1-1DasbBoard/Pesquisa',
                  onTap: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => Chart_Bi_One()))),
            ],
          ),
          MenuItem(
            title: 'Pag/2',
            onTap: () => message(context, 'Menu 1-1-2 tap'),
          ),
          MenuItem(
            title: 'Pag/3',
            onTap: () => message(context, 'Menu 1-1-2 tap'),
          ),
          MenuItem(
            title: 'Pag/4',
            onTap: () => message(context, 'Menu 1-1-2 tap'),
          ),
          MenuItem(
            title: 'Pag/5',
            onTap: () => message(context, 'Menu 1-1-2 tap'),
          ),
        ],
        onTap: () => message(context, 'Gestão SN'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DecoratedBox(
        decoration: BoxDecoration(color: const Color(0xff041e42)),
        child: Column(
          children: [
            SizedBox(
              width: 40,
              child: Container(
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2awK4qvs_KG5DkPAdOAWuC56sRIOuARNLMzHRg9gjI__14J9mV9Nqcc6-APf9sQsl_9M&usqp=CAU',
                    fit: BoxFit.fill),
              ),
            ),
            PlutoMenuBar(
              backgroundColor: Colors.black,
              gradient: false,
              textStyle: TextStyle(color: Colors.white, fontSize: 18),
              height: 40,
              menuIconColor: Colors.white,
              menuIconSize: 20,
              moreIconColor: Colors.red,
              menus: getMenus(context),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.end,
        ),
      ),
    );
  }
}
