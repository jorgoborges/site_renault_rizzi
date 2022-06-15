import 'package:flutter/material.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

import 'Chart_Bi_One.dart';

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
          iconTheme: IconThemeData(color: Colors.purpleAccent),
          backgroundColor: Colors.black,
          title: Text('VWCO'),
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
        onTap: () => message(context, 'Minha área'),
      ),
      MenuItem(
        title: 'Control Tower',
        icon: Icons.home,
        children: [
          MenuItem(
            title: '1-Gestão de operação motorista',
            onTap: () => message(context, 'Menu 1-1 tap'),
            children: [
              MenuItem(
                title: '1-Excesso de velocidade',
                onTap: () => message(context, 'Menu 1-1-1 tap'),
                children: [
                  MenuItem(
                      title: '1-1DasbBoard/Pesquisa',
                      onTap: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => Chart_Bi_One()))),
                  MenuItem(
                    title: '1-1-1Reservado',
                    onTap: () => message(context, 'Menu 1-1-1-2 tap'),
                  ),
                ],
              ),
              MenuItem(
                title: '2-Marcha lenta',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
              MenuItem(
                title: '3-Veíc engrenado sem inj combust',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
              MenuItem(
                title: '4-Condução velocidade cruzeiro',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
              MenuItem(
                title: '5-Previsão',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
              MenuItem(
                title: '6-Condução do trecho em serra',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
            ],
          ),
          MenuItem(
            title: '2-Gestão combustível ARLA',
            onTap: () => message(context, 'Menu 1-2 tap'),
            children: [
              MenuItem(
                title: '1-Extratificação modelo',
                onTap: () => message(context, 'Menu 1-1-1 tap'),
                children: [
                  MenuItem(
                    title: '1-1DasbBoard/Pesquisa',
                    onTap: () => message(context, 'Menu 1-1-1-1 tap'),
                  ),
                  MenuItem(
                    title: '1-1-1Reservado',
                    onTap: () => message(context, 'Menu 1-1-1-2 tap'),
                  ),
                ],
              ),
              MenuItem(
                title: '2-Consumo Km frota',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
              MenuItem(
                title: '3-Top 10 > consumo',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
              MenuItem(
                title: '4-Aplic check list consumo',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
              MenuItem(
                title: '5-Treinamento Instrutor Oper',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
              MenuItem(
                title: '6-Acompanhamento consumo veíc',
                onTap: () => message(context, 'Menu 1-1-2 tap'),
              ),
            ],
          ),
          MenuItem(
            title: '3-Gestão manutenção',
            onTap: () => message(context, 'Menu 1-2 tap'),
            children: [
              MenuItem(
                title: '1-1DasbBoard/Pesquisa',
                onTap: () => message(context, 'Menu 1-1-1-1 tap'),
              ),
              MenuItem(
                title: '1-1-1Reservado',
                onTap: () => message(context, 'Menu 1-1-1-2 tap'),
              ),
            ],
          ),
          MenuItem(
            title: '4-Confiabilidade Manut.Quebra Km.',
            onTap: () => message(context, 'Menu 1-2 tap'),
            children: [
              MenuItem(
                title: '1-1DasbBoard/Pesquisa',
                onTap: () => message(context, 'Menu 1-1-1-1 tap'),
              ),
              MenuItem(
                title: '1-1-1Reservado',
                onTap: () => message(context, 'Menu 1-1-1-2 tap'),
              ),
            ],
          ),
          MenuItem(
            title: '5-Serviços desenho do produto',
            onTap: () => message(context, 'Menu 1-2 tap'),
            children: [
              MenuItem(
                title: '1-1DasbBoard/Pesquisa',
                onTap: () => message(context, 'Menu 1-1-1-1 tap'),
              ),
              MenuItem(
                title: '1-1-1Reservado',
                onTap: () => message(context, 'Menu 1-1-1-2 tap'),
              ),
            ],
          ),
          MenuItem(
            title: '6-Gestão de componentes',
            onTap: () => message(context, 'Menu 1-2 tap'),
            children: [
              MenuItem(
                title: '1-1DasbBoard/Pesquisa',
                onTap: () => message(context, 'Menu 1-1-1-1 tap'),
              ),
              MenuItem(
                title: '1-1-1Reservado',
                onTap: () => message(context, 'Menu 1-1-1-2 tap'),
              ),
            ],
          ),
          MenuItem(
            title: '7-CPK - Peças',
            onTap: () => message(context, 'Menu 1-2 tap'),
            children: [
              MenuItem(
                title: '1-1DasbBoard/Pesquisa',
                onTap: () => message(context, 'Menu 1-1-1-1 tap'),
              ),
              MenuItem(
                title: '1-1-1Reservado',
                onTap: () => message(context, 'Menu 1-1-1-2 tap'),
              ),
            ],
          ),
          MenuItem(
            title: '8-Gestão de Pneus',
            onTap: () => message(context, 'Menu 1-2 tap'),
            children: [
              MenuItem(
                title: '1-1DasbBoard/Pesquisa',
                onTap: () => message(context, 'Menu 1-1-1-1 tap'),
              ),
              MenuItem(
                title: '1-1-1Reservado',
                onTap: () => message(context, 'Menu 1-1-1-2 tap'),
              ),
            ],
          ),
          MenuItem(
            title: '9-Gestão de disponibilidade',
            onTap: () => message(context, 'Menu 1-2 tap'),
            children: [
              MenuItem(
                title: '1-1DasbBoard/Pesquisa',
                onTap: () => message(context, 'Menu 1-1-1-1 tap'),
              ),
              MenuItem(
                title: '1-1-1Reservado',
                onTap: () => message(context, 'Menu 1-1-1-2 tap'),
              ),
            ],
          ),
        ],

        /////// divisão
      ),
      MenuItem(
        title: 'Gestão VN',
        icon: Icons.insert_chart_outlined,
        children: [
          MenuItem(
            title: 'Pag/info',
            onTap: () => message(context, 'Gestão VN'),
          ),
        ],
      ),
      MenuItem(
        title: 'Gestão PV',
        icon: Icons.insert_chart_outlined,
        onTap: () => message(context, 'Gestão PV'),
      ),
      MenuItem(
        title: 'Gestão SN',
        icon: Icons.insert_chart_outlined,
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
              width: 70,
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
