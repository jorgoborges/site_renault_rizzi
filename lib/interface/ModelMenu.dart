import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:simple_grid/simple_grid.dart';
import 'package:site_renault_rizzi/interface/1Menu.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(ModelMenu());
}

class ModelMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colocar Titulo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Colocar Titulo'),
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
                backgroundColor: Colors.amberAccent
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
                title: 'T-1',
                onTap: () {
                  page.jumpToPage(0);
                },
                icon: Icons.list_alt,
              ),
              SideMenuItem(
                priority: 1,
                title: 'T-2',
                onTap: () {
                  page.jumpToPage(1);
                },
                icon: Icons.content_paste,
              ),
              SideMenuItem(
                priority: 2,
                title: 'T-3',
                onTap: () {
                  page.jumpToPage(2);
                },
                icon: Icons.accessibility_outlined,
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
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .contact_support), //icon data for elevated button
                                                      label: Text(
                                                          "Pag 1/1"), //label text
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
                                                          .contact_support), //icon data for elevated button
                                                      label: Text(
                                                          "Pag 1/2"), //label text
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
                                                          .contact_support), //icon data for elevated button
                                                      label: Text(
                                                          "Pag 1/3"), //label text
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
                                  ),                       SpGridItem(
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
                                                          .contact_support), //icon data for elevated button
                                                      label: Text(
                                                          "Pag 1/4"), //label text
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
                                                          .contact_support), //icon data for elevated button
                                                      label: Text(
                                                          "Pag 1/5"), //label text
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
                                                    child: ElevatedButton.icon(onPressed: () {},
                                                      icon: Icon(Icons
                                                          .contact_support), //icon data for elevated button
                                                      label: Text(
                                                          "Pag 1/6"), //label text
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
                                                          .contact_support), //icon data for elevated button
                                                      label: Text(
                                                          "Pag 1/2"), //label text
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
                                                          .contact_support), //icon data for elevated button
                                                      label: Text(
                                                          "Pag 2/2"), //label text
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
                                                          .contact_support), //icon data for elevated button
                                                      label: Text(
                                                          "Pag 2/3"), //label text
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
                                                          .contact_support), //icon data for elevated button
                                                      label: Text(
                                                          "Pag 2/4"), //label text
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
                                                          .contact_support), //icon data for elevated button
                                                      label: Text(
                                                          "Pag2/5"), //label text
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
                                                          .contact_support), //icon data for elevated button
                                                      label: Text(
                                                          "Pag2/6"), //label text
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
                                                        .contact_support), //icon data for elevated button
                                                    label: Text(
                                                        "Pag 1/3"), //label text
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
                                                        .contact_support), //icon data for elevated button
                                                    label: Text(
                                                        "Pag 2/3"), //label text
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
                                                        .contact_support), //icon data for elevated button
                                                    label: Text(
                                                        "Pag 3/3"), //label text
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
                                                        .contact_support), //icon data for elevated button
                                                    label: Text(
                                                        "Pag 3/4"), //label text
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
                                                        .contact_support), //icon data for elevated button
                                                    label: Text(
                                                        "Pag 3/5"), //label text
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
                                                        .contact_support), //icon data for elevated button
                                                    label: Text(
                                                        "Pag 3/6"), //label text
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
