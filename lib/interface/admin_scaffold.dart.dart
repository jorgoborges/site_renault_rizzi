import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:site_renault_rizzi/login/login_home.dart';
import 'package:site_renault_rizzi/model_backoffice/zero_level_item_1_page.dart';
import 'package:site_renault_rizzi/model_backoffice/zero_level_item_2_page.dart';
import 'package:site_renault_rizzi/model_backoffice/zero_level_item_3_page.dart';
import '../model_power_bi_vwco/home_page.dart';
import '../model_power_bi_vwco/one_level_item_1_page.dart';
import 'dart:html' as html;

void main() {
  runApp(SamplePagePortal());
}

class SamplePagePortal extends StatefulWidget {
  @override
  _SamplePagePortalState createState() => _SamplePagePortalState();
}

class _SamplePagePortalState extends State<SamplePagePortal> {
  static const MaterialColor themeBlack = MaterialColor(
    _themeBlackPrimaryValue,
    <int, Color>{
      50: Color(_themeBlackPrimaryValue),
      100: Color(_themeBlackPrimaryValue),
      200: Color(_themeBlackPrimaryValue),
      300: Color(_themeBlackPrimaryValue),
      400: Color(_themeBlackPrimaryValue),
      500: Color(_themeBlackPrimaryValue),
      600: Color(_themeBlackPrimaryValue),
      700: Color(_themeBlackPrimaryValue),
      800: Color(_themeBlackPrimaryValue),
      900: Color(_themeBlackPrimaryValue),
    },
  );
  static const int _themeBlackPrimaryValue = 0xFF222222;
  static const Color themeTextPrimary = Color(0xFF9D9D9D);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: themeBlack,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: themeBlack,
            ),
        primaryTextTheme: Theme.of(context).textTheme.apply(
              bodyColor: themeTextPrimary,
            ),
        primaryIconTheme: IconThemeData(
          color: themeTextPrimary,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: (settings) {
        final page = _getPageWidget(settings);
        if (page != null) {
          return PageRouteBuilder(
              settings: settings,
              pageBuilder: (_, __, ___) => page,
              transitionsBuilder: (_, anim, __, child) {
                return FadeTransition(
                  opacity: anim,
                  child: child,
                );
              });
        }
        return null;
      },
    );
  }

  Widget? _getPageWidget(RouteSettings settings) {
    if (settings.name == null) {
      return null;
    }
    final uri = Uri.parse(settings.name!);
    switch (uri.path) {
      case '/':
        return HomePage();

      case '/zeroLevelItem1':
        return zeroLevelItem1Page();
      case '/zeroLevelItem2':
        return zeroLevelItem2Page();
      case '/zeroLevelItem3':
        return zeroLevelItem3Page();

      case '/oneLevelItem1':
        return oneLevelItem1Page();
    }
    return null;
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({
    Key? key,
    required this.route,
    required this.body,
  }) : super(key: key);

  final Widget body;
  final String route;

  final List<AdminMenuItem> _sideBarItems = const [
    AdminMenuItem(
      title: 'Control Tower',
      icon: Icons.cell_tower,
      children: [
        AdminMenuItem(
          title: 'Gest??o de Opera????o ( Motorista )',
          route: '/',
          icon: Icons.subscriptions_outlined,
          children: [
            AdminMenuItem(
              title: 'Excesso de Velocidade + Excesso de Velocidade na Chuva',
              route: '/oneLevelItem1',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title:
                  'Excesso de Marcha Lenta + Excesso de Marcha Lenta com A/C',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Banguela',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: '% Faixa Verde Econ??mica',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Freada Brusca',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Excesso de RPM',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
          ],
        ),
        AdminMenuItem(
          title: 'Gest??o de Combust??vel / ARLA',
          route: '/',
          icon: Icons.subscriptions_outlined,
          children: [
            AdminMenuItem(
              title: 'Estratifica????o por Modelo',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Consumo km da Frota',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Top 10 Ve??culos com Maior Consumo',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Aplica????o Check-list de Consumo',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Treinamento Instrutor Operacional',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Acompanhamento do Consumo por Ve??culo',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
          ],
        ),
        AdminMenuItem(
          title: 'Gest??o de Manuten????o',
          route: '/',
          icon: Icons.subscriptions_outlined,
          children: [
            AdminMenuItem(
              title: 'Monitoramento da Sa??de dos Ativos',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Planejamento das Manuten????es',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Performance dos Motoristas',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Monitoramento da Disponibilidade',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
          ],
        ),
        AdminMenuItem(
          title: 'Confiabilidade de Manuten????o ( Quebra por Km )',
          route: '/',
          icon: Icons.subscriptions_outlined,
          children: [
            AdminMenuItem(
              title: 'Quebra por KM - Geral',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Top 10 Grupos e Subgrupos',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'An??lise Cr??tica de Ofensores',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Acompanhamento Falhas em Garantia',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Melhoria na Disponibilidade do Ve??culo',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
          ],
        ),
        AdminMenuItem(
          title: 'Servi??os ( Desempenho do Produto )',
          route: '/',
          icon: Icons.subscriptions_outlined,
          children: [
            AdminMenuItem(
              title: 'Custo de Opera????o do Ve??culo',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Aplica????o de Pe??as e Servi??os',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Estrafifica????o por modelo e ano ( 5 anos )',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Durabilidade - Pe??as Aplicadas',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Acompanhamento - Custo de Opera????o ( Pe??as )',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
          ],
        ),
        AdminMenuItem(
          title: 'Gest??o de Componentes',
          route: '/',
          icon: Icons.subscriptions_outlined,
          children: [
            AdminMenuItem(
              title: 'Estratifica????o por Compomente e Modelo ',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'An??lise 1?? Vida - Genu??na e N??o Genu??na',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'An??lise 2?? Vida - Genu??na e N??o Genu??na',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Desempenho por Compomente',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Treinamento Sob Demanda',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Melhorias nos Intervalos de Manuten????o',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
          ],
        ),
        AdminMenuItem(
          title: 'CPK - Pe??as',
          route: '/',
          icon: Icons.subscriptions_outlined,
          children: [
            AdminMenuItem(
              title: 'Consumo do Ve??culo',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Estratifica????o por Pre??o e Modelo',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Avalia????o de Volume x Aplica????o',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Desempenho - CPK',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Pacotes de Pe??as por Grupo - Top 20',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Pacotes de Pe??as',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
          ],
        ),
        AdminMenuItem(
          title: 'Gest??o de Pneus',
          route: '/',
          icon: Icons.subscriptions_outlined,
          children: [
            AdminMenuItem(
              title: 'Compra ( Fornecedor / Km m??dio / Pre??o Unit??rio / CPK )',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Itendtifica????o de Pneus e Controle',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title:
                  'Montagem ( Como; Caracter??stica, Ex. Dianteira n??o Monta Recapados )',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title:
                  'Controle ( Coleta, Hist??rico de Dados; Calibragem; Alinhamento / Balanceamento; Rod??zios; Profundidade dos Sulcos; Cortes; etc )',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title:
                  'Gest??o ( Custo total de Manuten????o, Custo Aplicado dos pneus; Gastos com pneus na estrada; ??ndice de sucateamento )',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title:
                  'Descarte ( Ex. Vendidos na segunda recapagem; podendo ainda ser recapados; pneus que n??o servem v??o para o sucateiro especializado )',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
          ],
        ),
        AdminMenuItem(
          title: 'Gest??o de Disponibilidade', //09
          route: '/',
          icon: Icons.subscriptions_outlined,
          children: [
            AdminMenuItem(
              title: 'Frota',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Fluxo de Transporte',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Garantia de Disponibilidade',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
          ],
        ),
      ],
    ),
    AdminMenuItem(
      title: 'Gest??o de Ativos',
      icon: Icons.business_center_outlined,
      children: [
        AdminMenuItem(
          title: 'Vis??o Geral da Frota',
          route: '/',
          icon: Icons.subscriptions_outlined,
        ),
        AdminMenuItem(
          title: 'Gastos x Metas',
          route: '/',
          icon: Icons.subscriptions_outlined,
        ),
        AdminMenuItem(
          title: 'Opera????o da Frota',
          route: '/',
          icon: Icons.subscriptions_outlined,
        ),
        AdminMenuItem(
          title: 'Desenvolvimento da Frota',
          route: '/',
          icon: Icons.subscriptions_outlined,
        ),
        AdminMenuItem(
          title: 'Resumo de Contas',
          route: '/',
          icon: Icons.subscriptions_outlined,
        ),
        AdminMenuItem(
          title: 'Informa????o de Contas',
          route: '/',
          icon: Icons.subscriptions_outlined,
        ),
        AdminMenuItem(
          title: 'Tend??ncia da Moeda ( Financeiro )',
          route: '/',
          icon: Icons.subscriptions_outlined,
        ),
        AdminMenuItem(
          title: 'Previs??o no Ano Corrente',
          route: '/',
          icon: Icons.subscriptions_outlined,
        ),
      ],
    ),
    AdminMenuItem(
      title: 'Gest??o Estrat??gica',
      icon: Icons.network_check_outlined,
      children: [
        AdminMenuItem(
          title: 'Gest??o VN',
          route: '/',
          icon: Icons.bookmark_added_outlined,
          children: [
            AdminMenuItem(
              title: 'Macroecon??mica',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'An??lise Concorr??ncia',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'RoadMap',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Business Plan ',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Vitrine Acess??rios e P&S',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Intera????o Cliente',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Gest??o atividades / Temperatura de Campo',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
          ],
        ),
        AdminMenuItem(
          title: 'Gest??o PV',
          route: '/',
          icon: Icons.bookmark_added_outlined,
          children: [
            AdminMenuItem(
              title: 'Macroecon??mica',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'An??lise Concorr??ncia',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'RoadMap',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Business Plan',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Vitrine P&S e Acess??rios',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Intera????o Cliente',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Gest??o atividades / Temperatura de Campo',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
          ],
        ),
        AdminMenuItem(
          title: 'Gest??o SN',
          route: '/',
          icon: Icons.bookmark_added_outlined,
          children: [
            AdminMenuItem(
              title: 'Macroecon??mica',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'An??lise Concorr??ncia',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'RoadMap',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Business Plan ',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Vitrine P&S e Acess??rios',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Intera????o Cliente',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Gest??o Atividades / Temperatura de Campo',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
          ],
        ),
      ],
    ),
  ];

  //final List<AdminMenuItem> _adminMenuItems = const [
  // AdminMenuItem(
  //   title: 'User Profile',
  //    icon: Icons.account_circle,
  //     route: '/',
  //   ),
  //   AdminMenuItem(
  //     title: 'Settings',
  //     icon: Icons.settings,
  //     route: '/',
//    ),
//    AdminMenuItem(
  //    title: 'Logout',
  //     icon: Icons.logout,
  //     route: '/',
//    ),
//  ];

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF041e42),
        actions: [
          // PopupMenuButton<AdminMenuItem>(
          //    child: const Icon(Icons.account_circle),
          //    itemBuilder: (context) {
          ////     return _adminMenuItems.map((AdminMenuItem item) {
          //     return PopupMenuItem<AdminMenuItem>(
          //       value: item,
          //       child: Row(
          //         children: [
          //          Icon(item.icon),
          //         Padding(
          //       padding: const EdgeInsets.only(left: 8.0),
          //       child: Text(
          //        item.title,
          //       style: const TextStyle(
          //         fontSize: 14,
          //        ),
          //       ),
          //     ),
          //    ],
          //   ),
          //   );
          //     }).toList();
          //    },
          //     onSelected: (item) {
          //       print(
          //    'actions: onSelected(): title = ${item.title}, route = ${item.route}');
          //       Navigator.of(context).pushNamed(item.route!);
          //     },
          //       ),

          IconButton(
              tooltip: 'Sair',
              iconSize: 25,
              icon: const Icon(Icons.exit_to_app_outlined),
              color: Colors.white,
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => LoginHome()))),
          IconButton(
            tooltip: 'Rizzi Academy',
            iconSize: 25,
            icon: const Icon(Icons.school_outlined),
            color: Colors.white,
            onPressed: () {
              html.window.open(
                  'https://www.rizziacademy.com.br/login/index.php/', "_blank");
            },
          ),
          IconButton(
            tooltip: 'Rizzi Consulting',
            iconSize: 25,
            icon: const Icon(Icons.home_outlined),
            color: Colors.white,
            onPressed: () {
              html.window.open('https://rizziconsulting.com.br/', "_blank");
            },
          ),

          TextButton(
            onPressed: () async {},
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: Image(
                    image: AssetImage("assets/images/image1.png.png"),
                    fit: BoxFit.fill,
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      sideBar: SideBar(
        backgroundColor: const Color(0xFFEEEEEE),
        activeBackgroundColor: Colors.black26,
        borderColor: const Color(0xFFE7E7E7),
        iconColor: Colors.black87,
        activeIconColor: Colors.blue,
        textStyle: const TextStyle(
          color: Color(0xFF337ab7),
          fontSize: 12,
        ),
        activeTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        items: _sideBarItems,
        selectedRoute: route,
        onSelected: (item) {
          print(
              'sideBar: onTap(): title = ${item.title}, route = ${item.route}');
          if (item.route != null && item.route != route) {
            Navigator.of(context).pushNamed(item.route!);
          }
        },
        header: Container(
          height: 40,
          width: double.infinity,
          color: const Color(0xff007a33),
          child: const Center(
            child: Text('RMS - RIZZI MANAGEMENT SYSTEM',
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
        footer: Container(
          height: 40,
          width: double.infinity,
          color: const Color(0xff007a33),
          child: const Center(
            child: Text(
              'Rizzi Consulting ??? 2000|2022',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: body,
      ),
    );
  }
}
