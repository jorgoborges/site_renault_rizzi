import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:site_renault_rizzi/interface/1Menu.dart';
import 'package:site_renault_rizzi/interface/5AuditorPanel.dart';
import 'package:site_renault_rizzi/interface/ActionPlan.dart';
import 'package:site_renault_rizzi/interface/FechamentoAnaliseGar.dart';

void main() {
  runApp(PosVendasRdb());
}

class PosVendasRdb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pós Vendas RDB',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Pós Vendas RDB'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController page = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
            controller: page,
            style: SideMenuStyle(
              displayMode: SideMenuDisplayMode.auto,
              hoverColor: Colors.greenAccent,
              selectedColor: Colors.green,
              selectedTitleTextStyle: TextStyle(color: Colors.white),
              selectedIconColor: Colors.white,
              // backgroundColor: Colors.amber
              // openSideMenuWidth: 200
            ),
            title: Column(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 150,
                    maxWidth: 150,
                  ),
                  child: Image.asset(
                    'assets/images/easy_sidemenu.png',
                  ),
                ),
                Divider(
                  indent: 8.0,
                  endIndent: 8.0,
                ),
              ],
            ),
            footer: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'borgesconsulting(®)2019-2022',
                style: TextStyle(fontSize: 15),
              ),
            ),
            items: [
              SideMenuItem(
                priority: 0,
                title: 'Garantia',
                onTap: () {
                  page.jumpToPage(0);
                },
                icon: Icons.home,
              ),
              SideMenuItem(
                priority: 1,
                title: 'Calibração',
                onTap: () {
                  page.jumpToPage(1);
                },
                icon: Icons.file_open_rounded,
              ),
              SideMenuItem(
                priority: 2,
                title: ''
                    'Sair',
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Menu()));
                },
                icon: Icons.exit_to_app,
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: page,
              children: [
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(8),
                              alignment: Alignment.center,
                              height: 25,
                              width: 5,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ExecutarAnaliseGar()));
                                },
                                child: Text('Base',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(8),
                              height: 25,
                              width: 5,
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                onPressed:
                                    () {}, // falta direcionar para tela xpto
                                child: Text('Analise',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(8),
                              alignment: Alignment.center,
                              height: 25,
                              width: 5,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ActionPlan()));
                                },
                                child: Text('Pré Ata',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.all(8),
                              alignment: Alignment.center,
                              height: 25,
                              width: 5,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Resumo Final',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black)),
                              ),
                            ),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Page\n   2',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Page\n   3',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Page\n   4',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Page\n   5',
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
