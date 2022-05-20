import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/2PosVendasRdb.dart';
import 'package:site_renault_rizzi/interface/3VendasRdb.dart';
import 'package:site_renault_rizzi/interface/4BackOfficePanel.dart';
import 'package:site_renault_rizzi/interface/5AuditorPanel.dart';
import 'package:site_renault_rizzi/interface/GerarSenha.dart';
import 'package:site_renault_rizzi/interface/PlataformaGarantia.dart';

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
      appBar: AppBar(backgroundColor: const Color(0xff1b5e20)),//041e42 007a33
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("user@mail.com"),
              accountName: Text("Jorge Borges"),
              currentAccountPicture: CircleAvatar(
                child: Text("JB"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha conta"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GerarSenha()));
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip_outlined),
              title: Text("Restrito"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BackOfficePanel()));
              },
            ),
    ListTile(
    leading: Icon(Icons.supervised_user_circle),
    title: Text("Auditor"),
    onTap: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => AuditorPanel()));
    },
    ),
            ListTile(
              leading: Icon(Icons.folder_open),
              title: Text("Plataforma"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PlataformaGarantia()));
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_car),
              title: Text("Vendas"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => VendasRdb()));
              },
            ),
            ListTile(
              leading: Icon(Icons.construction),
              title: Text("Pós Vendas"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PosVendasRdb()));
              },
            ),
            ListTile(
              leading: Icon(Icons.transit_enterexit_sharp),
              title: Text("Sair"),
              onTap: () {},
            ),
            SizedBox(
              height: 120,
              width: 100,
            ),
            SizedBox(
              height: 150,
              width: 60,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2015/01/21/14/14/apple-606761__340.jpg',
                ),
              ),
            ),
            SizedBox(
              height: 10,
              width: 10,
              child: FittedBox(
                  fit: BoxFit.cover,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                        'Rizzi Consulting ® 2000│2022 - Todos Direitos Reservados.',
                        style: TextStyle(fontSize: 9, color: Colors.black87)),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
