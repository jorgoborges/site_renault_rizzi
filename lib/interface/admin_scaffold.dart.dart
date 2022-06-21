import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:site_renault_rizzi/model_vwco//one_level_item_1_page.dart';
import 'package:site_renault_rizzi/model_vwco//second_level_item_1_page.dart';
import 'package:site_renault_rizzi/model_vwco//second_level_item_2_page.dart';
import 'package:site_renault_rizzi/model_vwco//second_level_item_3_page.dart';
import 'package:site_renault_rizzi/model_vwco//second_level_item_4_page.dart';

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
      case '/oneLevelItem1':
        return oneLevelItem1Page();
      case '/secondLevelItem1':
        return SecondLevelItem1Page();
      case '/secondLevelItem2':
        return SecondLevelItem2Page();
      case '/secondLevelItem3':
        return SecondLevelItem3Page();
      case '/secondLevelItem4':
        return SecondLevelItem4Page();
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
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Marcha lenta',
              route: '/',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Veículo Engrenado sem Injeção de Combustível',
              route: '/',
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
              route: '/secondLevelItem1',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Consumo km da Frota',
              route: '/secondLevelItem2',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Top 10 veículos com maior consumo',
              route: '/secondLevelItem3',
              icon: Icons.subdirectory_arrow_right,
            ),
            AdminMenuItem(
              title: 'Aplicação Check-list de Consumo',
              route: '/secondLevelItem4',
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
        actions: [
          PopupMenuButton<AdminMenuItem>(
            color: Color(0xFF041e42),
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
                              fontSize: 14.0, color: Colors.white),
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
          TextButton(
            onPressed: () async {
              const url = 'https://rizziconsulting.com.br/';
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.home_outlined, color: Color(0xFFECEFF1)),
                SizedBox(width: 10),
                AutoSizeText('Rizziconsulting',
                    style: TextStyle(
                        color: Color(0xFFECEFF1),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          TextButton(
            onPressed: () async {
              const url = 'https://www.rizziacademy.com.br/';
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.school_outlined, color: Color(0xFFECEFF1)),
                SizedBox(width: 10),
                AutoSizeText('Rizziacademy',
                    style: TextStyle(
                        color: Color(0xFFECEFF1),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          TextButton(
            onPressed: () async {
              const url =
                  'https://www.google.com/maps/place/Rizzi+Consulting/@-22.7436674,-47.3365886,17z/data=!3m1!4b1!4m5!3m4!1s0x94c8909475c5b495:0x4a88399fc4515adc!8m2!3d-22.7436674!4d-47.3343999';
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(10),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.location_on_outlined, color: Color(0xFFECEFF1)),
                SizedBox(width: 10),
                AutoSizeText('Maps',
                    style: TextStyle(
                        color: Color(0xFFECEFF1),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400)),
              ],
            ),
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
                  child: Image.network(
                    'data:image/png;base64,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',
                    fit: BoxFit.fill,
                    width: 60,
                    height: 60,
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
