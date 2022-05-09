import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';

void main() {
  runApp(BackOfficePanel());
}

class BackOfficePanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BackOffice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
                title: 'Cadastrar Atualizar Concessão',
                onTap: () {
                  page.jumpToPage(0);
                },
                icon: Icons.home,
              ),
              SideMenuItem(
                priority: 1,
                title: 'Cadastro User',
                onTap: () {
                  page.jumpToPage(1);
                },
                icon: Icons.file_open_rounded,
              ),
              SideMenuItem(
                priority: 2,
                title: 'Cadastrar Liberação User',
                onTap: () {
                  page.jumpToPage(2);
                },
                icon: Icons.content_paste,
              ),
              SideMenuItem(
                priority: 3,
                title: 'Cadastro Situação',
                onTap: () {
                  page.jumpToPage(3);
                },
                icon: Icons.timeline_sharp,
              ),
              SideMenuItem(
                priority: 4,
                title: 'Cadastro Função',
                onTap: () {
                  page.jumpToPage(4);
                },
                icon: Icons.attach_money_sharp,
              ),
              SideMenuItem(
                priority: 6,
                title: 'Cadastro Pessoa',
                onTap: () async {},
                icon: Icons.help,
              ),
              SideMenuItem(
                priority: 7,
                title: 'Cadastro Bandeira',
                onTap: () async {},
                icon: Icons.bookmark_added_outlined,
              ),
              SideMenuItem(
                priority: 8,
                title: 'Cadastro Local',
                onTap: () async {},
                icon: Icons.bookmark_added_sharp,
              ),
              SideMenuItem(
                priority: 9,
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