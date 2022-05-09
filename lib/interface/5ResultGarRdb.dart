import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';

void main() {
  runApp(ResultGarRdbPanel());
}

class ResultGarRdbPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ResultGarRdbPanel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ResultGarRdbPanel'),
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
              hoverColor: Colors.blue[100],
              selectedColor: Colors.lightBlue,
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
                title: 'Definir Concessão',
                onTap: () {
                  page.jumpToPage(0);
                },
                icon: Icons.home,
              ),
              SideMenuItem(
                priority: 1,
                title: 'Ver Base Carregada',
                onTap: () {
                  page.jumpToPage(1);
                },
                icon: Icons.file_open_rounded,
              ),
              SideMenuItem(
                priority: 2,
                title: 'Analise',
                onTap: () {
                  page.jumpToPage(2);
                },
                icon: Icons.content_paste,
              ),
              SideMenuItem(
                priority: 3,
                title: 'Progresso',
                onTap: () {
                  page.jumpToPage(3);
                },
                icon: Icons.timeline_sharp,
              ),

              SideMenuItem(
                priority: 4,
                title: 'Lista Itens',
                onTap: () async {},
                icon: Icons.help,
              ),
              SideMenuItem(
                priority: 5,
                title: 'Pré Ata',
                onTap: () async {},
                icon: Icons.bookmark_added_outlined,
              ),
              SideMenuItem(
                priority: 6,
                title: 'Resumo Final',
                onTap: () async {},
                icon: Icons.bookmark_added_sharp,
              ),
              SideMenuItem(
                priority: 7,
                title: 'Resumo Valores',
                onTap: () async {},
                icon: Icons.bookmark_added_sharp,
              ),
              SideMenuItem(
                priority: 8,
                title: ''
                    'Sair',
                onTap: () async {},
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
                    child: Text(
                      'Page\n   1',
                      style: TextStyle(fontSize: 35),
                    ),
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
