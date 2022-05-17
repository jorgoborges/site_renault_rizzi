import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_menu/flutter_menu.dart';
import 'package:site_renault_rizzi/interface/Tela_Login.dart';


const Map kColorMap = {
  'Red': Colors.red,
  'Blue': Colors.blue,
  'Purple': Colors.purple,
  'Black': Colors.black,
  'Pink': Colors.pink,
  'Yellow': Colors.yellow,
  'Orange': Colors.orange,
  'White': Colors.white,
  'BlueGrey': Colors.blueGrey,
};

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portal cara Renault',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
                Colors.blueGrey[600]), // Set Button hover color
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.black),

            backgroundColor: MaterialStateProperty.all(Colors.white),
            overlayColor: MaterialStateProperty.all(
                Colors.blueGrey[600]), // Set Button hover color
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final ScrollController scrollController = ScrollController();
  TextEditingController controller = TextEditingController();
  String _message = "Choose a MenuItem.";
  String _drawerTitle = 'Tap a drawerItem';
  IconData _drawerIcon = Icons.menu;
  //Widget _drawerIcon = Icons.menu;

  Color masterBackgroundColor = Colors.white;
  Color detailBackgroundColor = Colors.blueGrey[300] as Color;

  void _showMessage(String newMessage) {
    setState(() {
      _message = newMessage;
    });
  }

  void _masterSetBackgroundColor(String color) {
    setState(() {
      masterBackgroundColor = kColorMap[color];
    });
  }

  void _detailSetBackgroundColor(String color) {
    setState(() {
      detailBackgroundColor = kColorMap[color];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppScreen(
        masterContextMenu: ContextMenu(
          width: 150,
          height: 250,
          child: ContextMenuSliver(
            title: 'Vendas',
            children: [
              masterContextMenuItem(color: 'Red'),
              masterContextMenuItem(color: 'Blue'),
              masterContextMenuItem(color: 'Purple'),
              masterContextMenuItem(color: 'Pink'),
              masterContextMenuItem(color: 'White'),
            ],
          ),
        ),
        detailContextMenu: ContextMenu(
          width: 300,
          height: 150,
          child: ContextMenuSliver(
            title: 'Pós Vendas',
            children: [
              detailContextMenuItem(color: 'Yellow'),
              detailContextMenuItem(color: 'Orange'),
              detailContextMenuItem(color: 'Pink'),
              detailContextMenuItem(color: 'Red'),
              detailContextMenuItem(color: 'BlueGrey'),
            ],
          ),
        ),
        menuList: [
          MenuItem(title: 'File', menuListItems: [
            MenuListItem(
              icon: Icons.open_in_new,
              title: 'Open',
              onPressed: () {
                _showMessage('File.open');
              },
              shortcut: MenuShortcut(key: LogicalKeyboardKey.keyO, ctrl: true),
            ),
            MenuListItem(
              title: 'Close',
              onPressed: () {
                _showMessage('File.close');
              },
            ),
            MenuListItem(
              title: 'Save',
              onPressed: () {
                _showMessage('File.save');
              },
            ),
            MenuListItem(
              title: 'Delete',
              shortcut: MenuShortcut(key: LogicalKeyboardKey.keyD, alt: true),
              onPressed: () {
                _showMessage('File.delete');
              },
            ),
          ]),
          MenuItem(title: 'Help', isActive: true, menuListItems: [
            MenuListItem(title: 'Help'),
            MenuListItem(title: 'About'),
            MenuListItem(title: 'License'),
            MenuListDivider(),
            MenuListItem(
              title: 'Sair',
              shortcut: MenuShortcut(key: LogicalKeyboardKey.keyS, alt: true),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TelaInicialLogin()));
                _showMessage('Sair');
              },
            ),
          ]),
        ],
        masterPane: masterPane(), //Será o portal de Vendas
        detailPane: detailPane(), //Será o portal de Pos Vendas
        drawer: AppDrawer(
          defaultSmall: false,
          largeDrawerWidth: 235,
          largeDrawer: drawer(small: false),
          smallDrawerWidth: 60,
          smallDrawer: drawer(small: true),
        ),
        onBreakpointChange: () {
          setState(() {
            print('Breakpoint change');
          });
        },
        resizeBar: ResizeBar(
            leftColor: masterBackgroundColor,
            rightColor: detailBackgroundColor),
      ),
    );
  }

  Widget drawer({required bool small}) {
    return Container(
        color: Colors.amber,
        child: ListView(
          children: [
            drawerButton(
                title: 'Dashboard Autoavaliação',
                icon: Icons.widgets,
                small: small),
            drawerButton(
                title: 'Calibrações', icon: Icons.widgets, small: small),
            drawerButton(
                title: 'Contestação', icon: Icons.widgets, small: small),
            drawerButton(
              title: 'Autoavaliação',
              icon: Icons.widgets,
              small: small,
            ),
            drawerButton(
              title: 'Meu Perfil',
              icon: Icons.widgets,
              small: small,
            ),
          ],
        ));
  }

  Widget drawerButton(
      {required String title, required IconData icon, required bool small}) {
    return small
        ? drawerSmallButton(icon: icon, title: title)
        : drawerLargeButton(icon: icon, title: title);
  }

  Widget drawerLargeButton({required String title, required IconData icon}) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
            elevation: 8,
            child: ListTile(
              leading: Icon(icon),
              title: Text(title),
              onTap: () {
                setState(() {
                  _drawerIcon = icon;
                  _drawerTitle = title;
                });
              },
            )));
  }

  Widget drawerSmallButton({required String title, required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(3, 8, 3, 8),
      child: Card(
          elevation: 8,
          child: SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _drawerIcon = icon;
                  _drawerTitle = title;
                });
              },
              child: Center(child: Icon(icon, size: 30, color: Colors.black54)),
            ),
          )),
    );
  }

  Builder detailPane() {
    print('BUILD: detailPane'); //Será o portal de Pos Vendas
    return Builder(
      builder: (BuildContext context) {
        return Container(
          color: detailBackgroundColor,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Card(
                  elevation: 12,
                  child: Container(
                    width: 300,
                    height: 50,
                    child: Container(
                      color: Colors.amber,
                      child: Center(
                          child: Text('Pós Vendas',
                              style: TextStyle(fontSize: 20))),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.appScreen.closeMenu();
                      },
                      child: Text('Close Menu'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.appScreen.hideMenu();
                      },
                      child: Text('Hide Menu'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.appScreen.showMenu();
                      },
                      child: Text('Show Menu'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  height: 300,
                  child: Container(
                    color: Colors.blueGrey,
                    child: Center(
                        child: Text(_message,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 40))),
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  elevation: 12,
                  child: Container(
                    width: 300,
                    height: 50,
                    child: Center(
                      child: Text(
                          'Pane height: ${context.appScreen.detailPaneDetails.height.toStringAsFixed(1)} width: ${context.appScreen.detailPaneDetails.width.toStringAsFixed(1)}',
                          style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                if (context.appScreen.isCompact())
                  ElevatedButton(
                    onPressed: () {
                      context.appScreen.showOnlyMaster();
                    },
                    child: Text('Show master'), // Será o portal de Vendas
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  Builder masterPane() {
    print('BUILD: masterPane'); //Será o portal de Vendas
    return Builder(
      builder: (BuildContext context) {
        return Container(
          color: masterBackgroundColor, //Será o portal de Vendas
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Card(
                  elevation: 12,
                  child: Container(
                    width: 300,
                    height: 50,
                    child: Container(
                      color: Colors.amber,
                      child: Center(
                          child: Text('Vendas',
                              style: TextStyle(
                                  fontSize: 20))), //Será o portal de Vendas
                    ),
                  ),
                ),
                SizedBox(height: 80),// icon abaixo de vendas
                SizedBox(
                    width: 155,
                    height: 110,
                    child: Card(
                        elevation: 8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(_drawerIcon, size: 50, color: Colors.black54),
                            Text(_drawerTitle,
                                style: TextStyle(color: Colors.black54)),
                          ],
                        ))),
                SizedBox(height: 80),
                ContextMenuContainer(
                  width: 300,
                  height: 200,
                  menu: ContextMenuSliver(
                    title: 'Widget',
                  ),
                  child: SizedBox(
                    width: 300,
                    height: 300,
                    child: Container(
                      color: Colors.blueGrey,
                      child: Center(
                        child: Text('Right click or longpress me',
                            textAlign: TextAlign.center,
                            softWrap: true,
                            style: TextStyle(fontSize: 30)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                if (context.appScreen.isCompact())
                  ElevatedButton(
                    onPressed: () {
                      context.appScreen.showOnlyDetail();
                    },
                    child: Text('Show detail'),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  Builder appContextMenu() {
    print('BUILD: appContextMenu');
    return Builder(
      builder: (BuildContext context) {
        return SizedBox(
          height: 300,
          width: 400,
          child: Container(
            color: Colors.yellow,
            child: Text('AppContextMenu'),
          ),
        );
      },
    );
  }

  Widget masterContextMenuItem({required String color}) {
    //Será o portal de Vendas
    return ContextMenuItem(
      onTap: () {
        _masterSetBackgroundColor(color);
      },
      child: Container(
        color: kColorMap[color],
        child: Center(child: Text(color)),
      ),
    );
  }

  Widget detailContextMenuItem({required String color}) {
    return ContextMenuItem(
      onTap: () {
        _detailSetBackgroundColor(color);
      },
      child: Container(
        color: kColorMap[color],
        child: Center(child: Text(color)),
      ),
    );
  }
}
