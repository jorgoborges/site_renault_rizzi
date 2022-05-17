import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:simple_grid/simple_grid.dart';
import 'package:site_renault_rizzi/interface/1Menu.dart';
import 'package:flutter/rendering.dart';
import 'package:site_renault_rizzi/interface/CadAcesso.dart';
import 'package:site_renault_rizzi/interface/CadBir.dart';
import 'package:site_renault_rizzi/interface/CadColaborador.dart';
import 'package:site_renault_rizzi/interface/CadNivel.dart';
import 'package:site_renault_rizzi/interface/ModelFilter.dart';

void main() {
  runApp(BackOfficePanel());
}

class BackOfficePanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BackOffice',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'BackOfficePanel'),
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
        actions: [
          ElevatedButton.icon(
            onPressed: () => Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (_) => Menu())),
            icon: const Icon(Icons.logout),
            label: const Text('Sair'),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenu(
            controller: page,
            style: SideMenuStyle(
                displayMode: SideMenuDisplayMode.auto,
                hoverColor: Colors.greenAccent,
                selectedColor: Colors.blueGrey,
                selectedTitleTextStyle: TextStyle(color: Colors.white),
                selectedIconColor: Colors.redAccent,
                backgroundColor: Colors.black38
                // openSideMenuWidth: 200
                ),
            title: Column(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: 150,
                    maxWidth: 150,
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
            ),
            items: [
              SideMenuItem(
                priority: 0,
                title: 'Cadastros',
                onTap: () {
                  page.jumpToPage(0);
                },
                icon: Icons.edit,
              ),
              SideMenuItem(
                priority: 1,
                title: 'Painel',
                onTap: () {
                  page.jumpToPage(1);
                },
                icon: Icons.settings_applications,
              ),
              SideMenuItem(
                priority: 2,
                title: 'Inativo',
                onTap: () {
                  page.jumpToPage(2);
                },
                icon: Icons.construction,
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
                    child: Container(
                      color: Colors.white,
                      child: Center(
                        child: Container(
                          color: Colors.white,
                          child: Center(
                            child: Container(
                              color: Colors.white,
                              child: SpGrid(
                                width: MediaQuery.of(context).size.width,
                                children: [
                                  SpGridItem(
                                    xs: 12,
                                    sm: 6,
                                    md: 4,
                                    lg: 3,
                                    child: Container(
                                      color: Colors.blueGrey,
                                      height: 50,
                                      child: Center(
                                        child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  margin:
                                                      const EdgeInsets.all(8),
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: ElevatedButton.icon(
                                                      onPressed: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        CadColaborador()));
                                                      },
                                                      icon: Icon(Icons
                                                          .people), //icon data for elevated button
                                                      label: Text(
                                                          "Colaborador"), //l //label text
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              primary: Colors
                                                                  .blueAccent //elevated btton background color
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start),
                                      ),
                                    ),
                                  ),
                                  SpGridItem(
                                    xs: 12,
                                    sm: 6,
                                    md: 4,
                                    lg: 3,
                                    child: Container(
                                      color: Colors.blueGrey,
                                      height: 50,
                                      child: Center(
                                        child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  margin:
                                                      const EdgeInsets.all(8),
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: ElevatedButton.icon(
                                                      onPressed: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        CadAcesso()));
                                                      },
                                                      icon: Icon(Icons
                                                          .key), //icon data for elevated button
                                                      label: Text(
                                                          "Acesso"), //l //label text
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              primary: Colors
                                                                  .blueAccent //elevated btton background color
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start),
                                      ),
                                    ),
                                  ),
                                  SpGridItem(
                                    xs: 12,
                                    sm: 6,
                                    md: 4,
                                    lg: 3,
                                    child: Container(
                                      color: Colors.blueGrey,
                                      height: 50,
                                      child: Center(
                                        child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  margin:
                                                      const EdgeInsets.all(8),
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: ElevatedButton.icon(
                                                      onPressed: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        CadNivel()));
                                                      },
                                                      icon: Icon(Icons
                                                          .report_problem), //icon data for elevated button
                                                      label: Text(
                                                          "Nivel"), //l //label text
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              primary: Colors
                                                                  .blueAccent //elevated btton background color
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start),
                                      ),
                                    ),
                                  ),
                                  SpGridItem(
                                    xs: 12,
                                    sm: 6,
                                    md: 4,
                                    lg: 3,
                                    child: Container(
                                      color: Colors.blueGrey,
                                      height: 50,
                                      child: Center(
                                        child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  margin:
                                                      const EdgeInsets.all(8),
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: ElevatedButton.icon(
                                                      onPressed: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        CadastroBir()));
                                                      },
                                                      icon: Icon(Icons
                                                          .local_offer), //icon data for elevated button
                                                      label: Text(
                                                          "ICB"), //l //label text
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              primary: Colors
                                                                  .blueAccent //elevated btton background color
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start),
                                      ),
                                    ),
                                  ),
                                  SpGridItem(
                                    xs: 12,
                                    sm: 6,
                                    md: 4,
                                    lg: 3,
                                    child: Container(
                                      color: Colors.blueGrey,
                                      height: 50,
                                      child: Center(
                                        child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  margin:
                                                      const EdgeInsets.all(8),
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: ElevatedButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .check_box), //icon data for elevated button
                                                      label: Text(
                                                          "Cadastras list Audit"), //l/label text
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              primary: Colors
                                                                  .blueAccent //elevated btton background color
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start),
                                      ),
                                    ),
                                  ),
                                  SpGridItem(
                                    xs: 12,
                                    sm: 6,
                                    md: 4,
                                    lg: 3,
                                    child: Container(
                                      color: Colors.blueGrey,
                                      height: 50,
                                      child: Center(
                                        child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  margin:
                                                      const EdgeInsets.all(8),
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: ElevatedButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .check_box), //icon data for elevated button
                                                      label: Text(
                                                          "6"), //l//label text
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              primary: Colors
                                                                  .blueAccent //elevated btton background color
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Center(
                    child: Container(
                      color: Colors.white,
                      child: Center(
                        child: Container(
                          color: Colors.white,
                          child: Center(
                            child: Container(
                              color: Colors.white,
                              child: SpGrid(
                                width: MediaQuery.of(context).size.width,
                                children: [
                                  SpGridItem(
                                    xs: 12,
                                    sm: 6,
                                    md: 4,
                                    lg: 3,
                                    child: Container(
                                      color: Colors.blueGrey,
                                      height: 50,
                                      child: Center(
                                        child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  margin:
                                                      const EdgeInsets.all(8),
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: ElevatedButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .check_box), //icon data for elevated button
                                                      label: Text("1"),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              primary: Colors
                                                                  .blueAccent //elevated btton background color
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start),
                                      ),
                                    ),
                                  ),
                                  SpGridItem(
                                    xs: 12,
                                    sm: 6,
                                    md: 4,
                                    lg: 3,
                                    child: Container(
                                      color: Colors.blueGrey,
                                      height: 50,
                                      child: Center(
                                        child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  margin:
                                                      const EdgeInsets.all(8),
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: ElevatedButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .check_box), //icon data for elevated button
                                                      label: Text(
                                                          "2"), //label text
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              primary: Colors
                                                                  .blueAccent //elevated btton background color
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start),
                                      ),
                                    ),
                                  ),
                                  SpGridItem(
                                    xs: 12,
                                    sm: 6,
                                    md: 4,
                                    lg: 3,
                                    child: Container(
                                      color: Colors.blueGrey,
                                      height: 50,
                                      child: Center(
                                        child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  margin:
                                                      const EdgeInsets.all(8),
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: ElevatedButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .check_box), //icon data for elevated button
                                                      label: Text(
                                                          "3"), //label text
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              primary: Colors
                                                                  .blueAccent //elevated btton background color
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start),
                                      ),
                                    ),
                                  ),
                                  SpGridItem(
                                    xs: 12,
                                    sm: 6,
                                    md: 4,
                                    lg: 3,
                                    child: Container(
                                      color: Colors.blueGrey,
                                      height: 50,
                                      child: Center(
                                        child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  margin:
                                                      const EdgeInsets.all(8),
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: ElevatedButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .check_box), //icon data for elevated button
                                                      label: Text(
                                                          "4"), //label text
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              primary: Colors
                                                                  .blueAccent //elevated btton background color
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start),
                                      ),
                                    ),
                                  ),
                                  SpGridItem(
                                    xs: 12,
                                    sm: 6,
                                    md: 4,
                                    lg: 3,
                                    child: Container(
                                      color: Colors.blueGrey,
                                      height: 50,
                                      child: Center(
                                        child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  margin:
                                                      const EdgeInsets.all(8),
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: ElevatedButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .check_box), //icon data for elevated button
                                                      label: Text(
                                                          "5"), //label text
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              primary: Colors
                                                                  .blueAccent //elevated btton background color
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start),
                                      ),
                                    ),
                                  ),
                                  SpGridItem(
                                    xs: 12,
                                    sm: 6,
                                    md: 4,
                                    lg: 3,
                                    child: Container(
                                      color: Colors.blueGrey,
                                      height: 50,
                                      child: Center(
                                        child: Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  margin:
                                                      const EdgeInsets.all(8),
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: ElevatedButton.icon(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .check_box), //icon data for elevated button
                                                      label: Text(
                                                          "6"), //label text
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              primary: Colors
                                                                  .blueAccent //elevated btton background color
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Container(
                    color: Colors.white,
                    child: Center(
                      child: Container(
                        color: Colors.white,
                        child: Center(
                          child: Container(
                            color: Colors.white,
                            child: SpGrid(
                              width: MediaQuery.of(context).size.width,
                              children: [
                                SpGridItem(
                                  xs: 12,
                                  sm: 6,
                                  md: 4,
                                  lg: 3,
                                  child: Container(
                                    color: Colors.blueGrey,
                                    height: 50,
                                    child: Center(
                                      child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                margin: const EdgeInsets.all(8),
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: ElevatedButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(Icons
                                                        .check_box), //icon data for elevated button
                                                    label:
                                                        Text("1"), //label text
                                                    style: ElevatedButton.styleFrom(
                                                        primary: Colors
                                                            .blueAccent //elevated btton background color
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start),
                                    ),
                                  ),
                                ),
                                SpGridItem(
                                  xs: 12,
                                  sm: 6,
                                  md: 4,
                                  lg: 3,
                                  child: Container(
                                    color: Colors.blueGrey,
                                    height: 50,
                                    child: Center(
                                      child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                margin: const EdgeInsets.all(8),
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: ElevatedButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(Icons
                                                        .check_box), //icon data for elevated button
                                                    label:
                                                        Text("2"), //label text
                                                    style: ElevatedButton.styleFrom(
                                                        primary: Colors
                                                            .blueAccent //elevated btton background color
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start),
                                    ),
                                  ),
                                ),
                                SpGridItem(
                                  xs: 12,
                                  sm: 6,
                                  md: 4,
                                  lg: 3,
                                  child: Container(
                                    color: Colors.blueGrey,
                                    height: 50,
                                    child: Center(
                                      child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                margin: const EdgeInsets.all(8),
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: ElevatedButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(Icons
                                                        .check_box), //icon data for elevated button
                                                    label:
                                                        Text("3"), //label text
                                                    style: ElevatedButton.styleFrom(
                                                        primary: Colors
                                                            .blueAccent //elevated btton background color
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start),
                                    ),
                                  ),
                                ),
                                SpGridItem(
                                  xs: 12,
                                  sm: 6,
                                  md: 4,
                                  lg: 3,
                                  child: Container(
                                    color: Colors.blueGrey,
                                    height: 50,
                                    child: Center(
                                      child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                margin: const EdgeInsets.all(8),
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: ElevatedButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(Icons
                                                        .check_box), //icon data for elevated button
                                                    label:
                                                        Text("4"), //label text
                                                    style: ElevatedButton.styleFrom(
                                                        primary: Colors
                                                            .blueAccent //elevated btton background color
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start),
                                    ),
                                  ),
                                ),
                                SpGridItem(
                                  xs: 12,
                                  sm: 6,
                                  md: 4,
                                  lg: 3,
                                  child: Container(
                                    color: Colors.blueGrey,
                                    height: 50,
                                    child: Center(
                                      child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                margin: const EdgeInsets.all(8),
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: ElevatedButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(Icons
                                                        .check_box), //icon data for elevated button
                                                    label:
                                                        Text("5"), //label text
                                                    style: ElevatedButton.styleFrom(
                                                        primary: Colors
                                                            .blueAccent //elevated btton background color
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start),
                                    ),
                                  ),
                                ),
                                SpGridItem(
                                  xs: 12,
                                  sm: 6,
                                  md: 4,
                                  lg: 3,
                                  child: Container(
                                    color: Colors.blueGrey,
                                    height: 50,
                                    child: Center(
                                      child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                margin: const EdgeInsets.all(8),
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: ElevatedButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(Icons
                                                        .check_box), //icon data for elevated button
                                                    label:
                                                        Text("6"), //label text
                                                    style: ElevatedButton.styleFrom(
                                                        primary: Colors
                                                            .blueAccent //elevated btton background color
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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
