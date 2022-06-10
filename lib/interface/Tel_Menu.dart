import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:site_renault_rizzi/interface/Tel_PosVenda.dart';
import 'package:site_renault_rizzi/interface/Tel_Venda.dart';
import 'package:site_renault_rizzi/interface/Tel_BackOffice.dart';
import 'package:site_renault_rizzi/interface/Tel_Auditor.dart';
import 'package:site_renault_rizzi/interface/Tel_Senha.dart';
import 'package:site_renault_rizzi/interface/Tel_PG.dart';

void main() => runApp(const Tel_Menu());

class Tel_Menu extends StatelessWidget {
  const Tel_Menu({Key? key}) : super(key: key);

  static const appTitle = 'PORTAL';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Menu',
      debugShowCheckedModeBanner: false,
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
      appBar: AppBar(
          title: const Text('Menu'), backgroundColor: const Color(0xff1b5e20)),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("user@mail.com"),
              accountName: Text("User"),
              currentAccountPicture: CircleAvatar(
                child: Text("US"),
                backgroundColor: const Color(0xff1b5e20),
              ),
            ),
            ListTile(
              leading: Icon(Icons.manage_accounts_outlined),
              title: Text("Minha conta"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Tel_Senha()));
              },
            ),
            ListTile(
              leading: Icon(Icons.app_settings_alt_outlined),
              title: Text("BackOffice"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Tel_BackOffice()));
              },
            ),
            ListTile(
              leading: Icon(Icons.work_outline_outlined),
              title: Text("Auditor"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Tel_Auditor()));
              },
            ),
            ListTile(
              leading: Icon(Icons.home_work_outlined),
              title: Text("Plataforma"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Tel_PG()));
              },
            ),
            ListTile(
              leading: Icon(Icons.car_rental_outlined),
              title: Text("Dep.Vendas"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Tel_Venda()));
              },
            ),
            ListTile(
              leading: Icon(Icons.car_repair),
              title: Text("Pós Vendas"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Tel_PosVenda()));
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app_outlined),
              title: Text("Sair"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Tel_Senha()));
              },
            ),
            SizedBox(
              child: Container(
                child: Image.network(
                  'data:image/png;base64,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',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
