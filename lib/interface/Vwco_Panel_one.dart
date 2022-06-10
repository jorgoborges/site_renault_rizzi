import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:simple_grid/simple_grid.dart';
import 'package:flutter/rendering.dart';
import 'package:site_renault_rizzi/interface/T_Classe.dart';
import 'package:site_renault_rizzi/interface/T_Departamento.dart';
import 'package:site_renault_rizzi/interface/T_ICB.dart';
import 'package:site_renault_rizzi/interface/T_Area.dart';
import 'package:site_renault_rizzi/interface/T_Cargo.dart';
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
      title: 'Objetivos Estratégicos',
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
                      maxHeight: 400,
                      maxWidth: 400,
                    ),
                    child: Container(
                      child: Image.network(
                        'data:image/jpeg;base64,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',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 400,
                      maxWidth: 400,
                    ),
                    child: const Text('Objetivos Estratégicos',
                        style: TextStyle(fontSize: 24, color: Colors.red)),


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
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .check_box), //icon data for elevated button
                                                        label: Text(
                                                            "Texto01"), //l //label text

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
                                                        onPressed: () {},
                                                        icon: Icon(Icons
                                                            .check_box), //icon data for elevated button
                                                        label: Text(
                                                            "Texto2"), //l //label text
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
