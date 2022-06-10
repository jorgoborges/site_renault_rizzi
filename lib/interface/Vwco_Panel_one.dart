import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:simple_grid/simple_grid.dart';
import 'package:flutter/rendering.dart';
import 'package:site_renault_rizzi/interface/T_Classe.dart';
import 'package:site_renault_rizzi/interface/T_Departamento.dart';
import 'package:site_renault_rizzi/interface/T_ICB.dart';
import 'package:site_renault_rizzi/interface/T_Area.dart';
import 'package:site_renault_rizzi/interface/T_Cargo.dart';
import 'package:site_renault_rizzi/interface/T_Empresa.dart';
import 'package:site_renault_rizzi/interface/T_Pessoa.dart';
import 'package:site_renault_rizzi/interface/T_Funcao.dart';
import 'package:site_renault_rizzi/interface/T_Projeto.dart';
import 'package:site_renault_rizzi/interface/T_Sugestao.dart';
import 'package:site_renault_rizzi/interface/Tel_Menu.dart';

import 'Menu_VWCO.dart';

void main() {
  runApp(Vwco_Panel_one());
}

class Vwco_Panel_one extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BackOffice',
      theme: ThemeData(),
      home: MyHomePage(title: 'Planejamento'),
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
          backgroundColor: const Color(0xFF1B5E20),
          actions: [
            ElevatedButton.icon(
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => Tel_Menu())),
              icon: Container(
                  child: const Icon(Icons.assignment_return_outlined)),
              label: const Text('Voltar',
                  style: TextStyle(fontSize: 12, color: Colors.white)),
              style: ElevatedButton.styleFrom(primary: const Color(0xFF1B5E20)),
            ),
            ElevatedButton.icon(
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => Menu_Vwco())),
              icon: const Icon(Icons.save_outlined),
              label: const Text('Salvar',
                  style: TextStyle(fontSize: 12, color: Colors.white)),
              style: ElevatedButton.styleFrom(primary: const Color(0xFF1B5E20)),
            ),
            ElevatedButton.icon(
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => Menu_Vwco())),
              icon: const Icon(Icons.mode_edit_outlined),
              label: const Text('Editar',
                  style: TextStyle(fontSize: 12, color: Colors.white)),
              style: ElevatedButton.styleFrom(primary: const Color(0xFF1B5E20)),
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
                  openSideMenuWidth: 300,
                  hoverColor: Colors.blueGrey,
                  selectedColor: Colors.blue.shade900,
                  selectedTitleTextStyle: TextStyle(color: Colors.white),
                  iconSize: 24,
                  selectedIconColor: Colors.greenAccent,
                  backgroundColor: Colors.white

                //
              ),
              title: Column(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 200,
                      maxWidth: 200,
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
                  title: 'Objetivos Estratégicos',
                  onTap: () {
                    page.jumpToPage(0);
                  },
                  icon: Icons.app_registration,
                ),
                SideMenuItem(
                  priority: 1,
                  title: 'Cenário Macroecônomico',
                  onTap: () {
                    page.jumpToPage(1);
                  },
                  icon: Icons.pie_chart,
                ),
                SideMenuItem(
                  priority: 2,
                  title: 'Inativo',
                  onTap: () {
                    page.jumpToPage(2);
                  },
                  icon: Icons.edit_off_outlined,
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
                                        color: const Color(0xff1b5e20),
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
                                                      child:
                                                      ElevatedButton.icon(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                      T_Pessoa()));
                                                        },
                                                        icon: Icon(Icons
                                                            .check_box), //icon data for elevated button
                                                        label: Text(
                                                            "0-T_Pessoa"), //l //label text

                                                        style: ElevatedButton
                                                            .styleFrom(
                                                            primary: Colors
                                                                .blue
                                                                .shade900),
                                                        //elevated btton background color
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
                                        color: const Color(0xff1b5e20),
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
                                                      child:
                                                      ElevatedButton.icon(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                      T_Empresa()));
                                                        },
                                                        icon: Icon(Icons
                                                            .check_box), //icon data for elevated button
                                                        label: Text(
                                                            "1-T_Empresa"), //l //label text
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                            primary: Colors
                                                                .blue
                                                                .shade900),
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
                                        color: const Color(0xff1b5e20),
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
                                                      child:
                                                      ElevatedButton.icon(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                      T_Funcao()));
                                                        },
                                                        icon: Icon(Icons
                                                            .check_box), //icon data for elevated button
                                                        label: Text(
                                                            "2-T_Função"), //l //label text
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                            primary: Colors
                                                                .blue
                                                                .shade900),
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
                                        color: const Color(0xff1b5e20),
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
                                                      child:
                                                      ElevatedButton.icon(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                      T_Cargo()));
                                                        },
                                                        icon: Icon(Icons
                                                            .check_box), //icon data for elevated button
                                                        label: Text(
                                                            "3-T_Cargo"), //l //label text
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                            primary: Colors
                                                                .blue
                                                                .shade900),
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
                                        color: const Color(0xff1b5e20),
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
                                                      child:
                                                      ElevatedButton.icon(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                      T_Sugestao()));
                                                        },
                                                        icon: Icon(Icons
                                                            .check_box), //icon data for elevated button
                                                        label: Text(
                                                            "4-T_Lista_Sugestão"), //l/label text
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                            primary: Colors
                                                                .blue
                                                                .shade900),
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
                                        color: const Color(0xff1b5e20),
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
                                                      child:
                                                      ElevatedButton.icon(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                      T_ICB()));
                                                        },
                                                        icon: Icon(Icons
                                                            .check_box), //icon data for elevated button
                                                        label: Text(
                                                            "5-T_ICB"), //l//label text
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                            primary: Colors
                                                                .blue
                                                                .shade900),
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
                                        color: const Color(0xff1b5e20),
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
                                                      child:
                                                      ElevatedButton.icon(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                      T_Area()));
                                                        },
                                                        icon: Icon(Icons
                                                            .check_box), //icon data for elevated button
                                                        label: Text(
                                                            "6-T_Área"), //l//label text
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                            primary: Colors
                                                                .blue
                                                                .shade900),
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
                                        color: const Color(0xff1b5e20),
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
                                                      child:
                                                      ElevatedButton.icon(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                      T_Departamento()));
                                                        },
                                                        icon: Icon(Icons
                                                            .check_box), //icon data for elevated button
                                                        label: Text(
                                                            "7-T_Departamento"), //l//label text
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                            primary: Colors
                                                                .blue
                                                                .shade900),
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
                                        color: const Color(0xff1b5e20),
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
                                                      child:
                                                      ElevatedButton.icon(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                      T_Classe()));
                                                        },
                                                        icon: Icon(Icons
                                                            .check_box), //icon data for elevated button
                                                        label: Text(
                                                            "8-T_Classe"), //l//label text
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                            primary: Colors
                                                                .blue
                                                                .shade900),
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
                                        color: const Color(0xff1b5e20),
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
                                                      child:
                                                      ElevatedButton.icon(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                      T_Projeto()));
                                                        },
                                                        icon: Icon(Icons
                                                            .check_box), //icon data for elevated button
                                                        label: Text(
                                                            "9-T_Projeto"), //l//label text
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                            primary: Colors
                                                                .blue
                                                                .shade900),
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
                                        color: const Color(0xff1b5e20),
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
                                                      child:
                                                      ElevatedButton.icon(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .check_box), //icon data for elevated button
                                                        label: Text("1-Rel"),
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                            primary: Colors
                                                                .blue
                                                                .shade900),
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
                                        color: const Color(0xff1b5e20),
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
                                                      child:
                                                      ElevatedButton.icon(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .check_box), //icon data for elevated button
                                                        label: Text(
                                                            "2-Rel"), //label text
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                            primary: Colors
                                                                .blue
                                                                .shade900),
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
                                        color: const Color(0xff1b5e20),
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
                                                      child:
                                                      ElevatedButton.icon(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .check_box), //icon data for elevated button
                                                        label: Text(
                                                            "3-Rel"), //label text
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                            primary: Colors
                                                                .blue
                                                                .shade900),
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
                                        color: const Color(0xff1b5e20),
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
                                                      child:
                                                      ElevatedButton.icon(
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .check_box), //icon data for elevated button
                                                        label: Text(
                                                            "4-Rel"), //label text
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                            primary: Colors
                                                                .blue
                                                                .shade900),
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
                                      color: const Color(0xff1b5e20),
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
                                                          "1-Inativo"), //label text
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                          primary: Colors
                                                              .blue
                                                              .shade900),
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
                                      color: const Color(0xff1b5e20),
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
                                                          "2-Inativo"), //label text
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                          primary: Colors
                                                              .blue
                                                              .shade900),
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
                                      color: const Color(0xff1b5e20),
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
                                                          "3-Inativo"), //label text
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                          primary: Colors
                                                              .blue
                                                              .shade900),
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
                                      color: const Color(0xff1b5e20),
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
                                                          "4-Inativo"), //label text
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                          primary: Colors
                                                              .blue
                                                              .shade900),
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
                ],
              ),
            ),
          ],
        ));
  }
}
