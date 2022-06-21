import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:site_renault_rizzi/model_vwco//second_level_item_1_page.dart';
import 'package:site_renault_rizzi/model_vwco//second_level_item_2_page.dart';
import 'package:site_renault_rizzi/model_vwco//second_level_item_3_page.dart';

import '../model_vwco//dashboard_page.dart';

void main() {
  runApp(SamplePagevwco());
}

class SamplePagevwco extends StatefulWidget {
  @override
  _SamplePagevwcoState createState() => _SamplePagevwcoState();
}

class _SamplePagevwcoState extends State<SamplePagevwco> {
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
        return DashboardPage();
      case '/secondLevelItem1':
        return SecondLevelItem1Page();
      case '/secondLevelItem2':
        return SecondLevelItem2Page();
      case '/secondLevelItem3':
        return SecondLevelItem3Page();



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
      title: 'Rizzi',
      route: '/', //definir rota e titulo ver com Alysson
      icon: Icons.people,
    ),
    AdminMenuItem(
      title: 'Control Tower',
      icon: Icons.cell_tower,
      children: [
        AdminMenuItem(
          title: 'Gestão de Operação',
          route: '/',
          icon: Icons.subscriptions_outlined,
          children: [
            AdminMenuItem(
              title: 'Excesso de Velocidade',
              route: '/secondLevelItem1',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Marcha lenta',
              route: '/secondLevelItem2',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Veículo Engrenado sem Injeção de Combustível',
              route: '/secondLevelItem3',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Condução com Velocidade Cruzeiro',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Previsão',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Condução do Trecho em Serra',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
          ],
        ),
        AdminMenuItem(
          title: 'Gestão de Combustível ARLA',
          route: '/',
          icon: Icons.subscriptions_outlined,
          children: [
            AdminMenuItem(
              title: 'Estratificação por Modelo',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Consumo km da Frota',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Top 10 veículos com maior consumo',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Aplicação Check-list de Consumo',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Treinamento Instrutor Operacional',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Acompanhamento do consumo por veículo',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
          ],
        ),
        AdminMenuItem(
          title: 'Gestão de Manutenção',
          route: '/',
          icon: Icons.subscriptions_outlined,
          children: [
            AdminMenuItem(
              title: 'Excesso de Velocidade',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Monitoramento da Saúde dos ativos',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Plano Contrato de Manutenção',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Planejamento das Manutenções',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Performance dos Motorista',
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

        // começa a gestão vn pv sn - Jorge
        AdminMenuItem(
          title: 'Gestão',
          icon: Icons.work_rounded,
          children: [
            AdminMenuItem(
              title: 'Gestão VN',
              route: '/',
              icon: Icons.subscriptions_outlined,
              children: [
                AdminMenuItem(
                  title: 'Gestão VN-1',
                  route: '/',
                  icon: Icons.subdirectory_arrow_right,
                )
              ],
            ),
            AdminMenuItem(
              title: 'Gestão PV',
              route: '/',
              icon: Icons.subscriptions_outlined,
              children: [
                AdminMenuItem(
                  title: 'Gestão PV-1',
                  route: '/',
                  icon: Icons.subdirectory_arrow_right,
                )
              ],
            ),
            AdminMenuItem(
              title: 'Gestão SN',
              route: '/',
              icon: Icons.subscriptions_outlined,
              children: [
                AdminMenuItem(
                  title: 'Gestão SN-1',
                  route: '/',
                  icon: Icons.subdirectory_arrow_right,
                )
              ],
            ),
          ],
        ),
      ],
    ),
  ];

  final List<AdminMenuItem> _adminMenuItems = const [
    AdminMenuItem(
      title: 'User Profile',
      icon: Icons.account_circle,
      route: '/',
    ),
    AdminMenuItem(
      title: 'Settings',
      icon: Icons.settings,
      route: '/',
    ),
    AdminMenuItem(
      title: 'Logout',
      icon: Icons.logout,
      route: '/',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Color(0xFF041e42),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "images/logo.PNG",
              fit: BoxFit.fill,
              height: 60,
              width: 60,
            ),
            Container(padding: const EdgeInsets.all(8.0)),
          ],
        ),
        actions: [
          PopupMenuButton<AdminMenuItem>(
            child: const Icon(Icons.account_circle),
            itemBuilder: (context) {
              return _adminMenuItems.map((AdminMenuItem item) {
                return PopupMenuItem<AdminMenuItem>(
                  value: item,
                  child: Row(
                    children: [
                      Icon(item.icon),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          item.title,
                          style: const TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList();
            },
            onSelected: (item) {
              print(
                  'actions: onSelected(): title = ${item.title}, route = ${item.route}');
              Navigator.of(context).pushNamed(item.route!);
            },
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
          fontSize: 13,
        ),
        activeTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 13,
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
          height: 25,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'VWCO',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        footer: Container(
          height: 30,
          width: double.infinity,
          color: const Color(0xff444444),
          child: const Center(
            child: Text(
              'By Borges',
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
