import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/2PosVendasRdb.dart';
import 'package:site_renault_rizzi/interface/3VendasRdb.dart';
import 'package:site_renault_rizzi/interface/4BackOfficePanel.dart';
import 'package:site_renault_rizzi/interface/5AuditorPanel.dart';

void main() => runApp(const Menu());

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  static const appTitle = 'PORTAL';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text('Portal'),
            ),
            ListTile(
              title: const Text('Pós Vendas'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PosVendasRdb()));
              },
            ),
            ListTile(
              title: const Text('Vendas'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VendasRdb()));
              },
            ),
            ListTile(
              title: const Text('BackOffice'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BackOfficePanel()));
              },
            ),
            ListTile(
              title: const Text('Auditor'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AuditorPanel()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
