import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:site_renault_rizzi/interface/1Menu.dart';
import 'package:site_renault_rizzi/interface/CadAcesso.dart';
import 'package:site_renault_rizzi/interface/CadBir.dart';
import 'package:site_renault_rizzi/interface/CadNivel.dart';
import 'package:site_renault_rizzi/interface/CarregarBaseGar.dart';
import 'package:site_renault_rizzi/interface/Grafico1.dart';
import 'package:site_renault_rizzi/interface/Grafico3.dart';

void main() {
  runApp(BackOficcepanel());
}

class BackOficcepanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BackOffice',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'BackOffice'),
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
              hoverColor: Colors.blueAccent,
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
                style: TextStyle(fontSize: 9),
              ),
            ),
            items: [
              SideMenuItem(
                priority: 0,
                title: 'Cadastros',
                onTap: () {
                  page.jumpToPage(0);
                },
                icon: Icons.newspaper,
              ),
              SideMenuItem(
                priority: 1,
                title: 'Dashboard',
                onTap: () {
                  page.jumpToPage(1);
                },
                icon: Icons.tablet_android,
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
                                          builder: (context) => CadAcesso()));
                                },
                                child: Text('Acesso',
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white)),
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
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CadastroBir()));
                                },
                                child: Text('ICB',
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white)),
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
                                          builder: (context) => CadNivel()));
                                },
                                child: Text('Nivel',
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white)),
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
                                          builder: (context) =>
                                              CarregarBaseGar()));
                                },
                                child: Text('Garantia',
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white)),
                              ),
                            ),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start),
                  ),
                ),
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
                                          builder: (context) => MyChart()));
                                },
                                child: Text('Andamento',
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white)),
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
                                          builder: (context) => MyChart3()));
                                },
                                child: Text('Dashboard',
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.white)),
                              ),
                            ),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start),
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
