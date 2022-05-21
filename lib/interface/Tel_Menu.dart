import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      appBar: AppBar(backgroundColor: const Color(0xff1b5e20)),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("user@mail.com"),
              accountName: Text("User"),
              currentAccountPicture: CircleAvatar(
                child: Text("US"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha conta"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Tel_Senha()));
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip_outlined),
              title: Text("Restrito"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Tel_BackOffice()));
              },
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: Text("Auditor"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Tel_Auditor()));
              },
            ),
            ListTile(
              leading: Icon(Icons.folder_open),
              title: Text("Plataforma"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Tel_PG()));
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_car),
              title: Text("Vendas"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Tel_Venda()));
              },
            ),
            ListTile(
              leading: Icon(Icons.construction),
              title: Text("Pós Vendas"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Tel_PosVenda()));
              },
            ),
            ListTile(
              leading: Icon(Icons.transit_enterexit_sharp),
              title: Text("Sair"),
              onTap: () {},
            ),
            SizedBox(
              height: 65,
            ),
            SizedBox(
              height: 175,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2015/01/21/14/14/apple-606761__340.jpg',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
