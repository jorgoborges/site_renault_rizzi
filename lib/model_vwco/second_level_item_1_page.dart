import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';
import 'package:simple_grid/simple_grid.dart';

class SecondLevelItem1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/secondLevelItem1',
      body: SpGrid(width: MediaQuery.of(context).size.width, children: [

        SpGridItem(
          xs: 12,
          sm: 6,
          md: 4,
          lg: 3,
          child: Container(

            decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 3.0),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            padding: EdgeInsets.all(10),
            height: 300,
            child: Container(
              color: Colors.white,
              height: 300,
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: AutoSizeText("Excesso de marcha lenta",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 20)),
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Divider(
                          height: 5,
                          thickness: 1,
                          color: Colors.black12,
                        )
                      ],
                    )),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          'Total de infrações',
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          '478',
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 28),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText("Principal infrator",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 18)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText("Motorista não identificado",
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 12)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                            height: 50,
                            width: 200,
                            child: Column(
                              children: [
                                Divider(
                                  height: 5,
                                  thickness: 1,
                                  color: Colors.black12,
                                )
                              ],
                            )),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerRight,
                        child: AutoSizeText("140",
                            style:
                                TextStyle(color: Colors.black, fontSize: 22)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 50,
                          width: 200,
                          child: AutoSizeText("17.190",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 12)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          padding: const EdgeInsets.all(10),
        ),
        SpGridItem(
          xs: 12,
          sm: 6,
          md: 4,
          lg: 3,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 3.0),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            padding: EdgeInsets.all(10),
            height: 300,
            child: Container(
              color: Colors.white,
              height: 300,
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: AutoSizeText("Embreagem",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 20)),
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Divider(
                          height: 5,
                          thickness: 1,
                          color: Colors.black12,
                        )
                      ],
                    )),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          'Total de infrações',
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          '47',
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 28),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText("Principal infrator",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 18)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText("Motorista não identificado",
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 12)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                            height: 50,
                            width: 200,
                            child: Column(
                              children: [
                                Divider(
                                  height: 5,
                                  thickness: 1,
                                  color: Colors.black12,
                                )
                              ],
                            )),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerRight,
                        child: AutoSizeText("30",
                            style:
                                TextStyle(color: Colors.black, fontSize: 22)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 50,
                          width: 200,
                          child: AutoSizeText("17.190",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 12)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          padding: const EdgeInsets.all(8),
        ),
        SpGridItem(
          xs: 12,
          sm: 6,
          md: 4,
          lg: 3,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 3.0),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            padding: EdgeInsets.all(10),
            height: 300,
            child: Container(
              color: Colors.white,
              height: 300,
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: AutoSizeText("Banguela",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 20)),
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Divider(
                          height: 5,
                          thickness: 1,
                          color: Colors.black12,
                        )
                      ],
                    )),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          'Total de infrações',
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          '47',
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 28),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText("Principal infrator",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 18)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText("Motorista não identificado",
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 12)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                            height: 50,
                            width: 200,
                            child: Column(
                              children: [
                                Divider(
                                  height: 5,
                                  thickness: 1,
                                  color: Colors.black12,
                                )
                              ],
                            )),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerRight,
                        child: AutoSizeText("88",
                            style:
                                TextStyle(color: Colors.black, fontSize: 22)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 50,
                          width: 200,
                          child: AutoSizeText("17.190",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 12)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          padding: const EdgeInsets.all(8),
        ),
        SpGridItem(
          xs: 12,
          sm: 6,
          md: 4,
          lg: 3,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 3.0),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            padding: EdgeInsets.all(10),
            height: 300,
            child: Container(
              color: Colors.white,
              height: 300,
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: AutoSizeText("Excesso de RPM",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 20)),
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Divider(
                          height: 5,
                          thickness: 1,
                          color: Colors.black12,
                        )
                      ],
                    )),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          'Total de infrações',
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          '7',
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 28),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText("Principal infrator",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 18)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText("Motorista não identificado",
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 12)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                            height: 50,
                            width: 200,
                            child: Column(
                              children: [
                                Divider(
                                  height: 5,
                                  thickness: 1,
                                  color: Colors.black12,
                                )
                              ],
                            )),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerRight,
                        child: AutoSizeText("3",
                            style:
                                TextStyle(color: Colors.black, fontSize: 22)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 50,
                          width: 200,
                          child: AutoSizeText("17.190",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 12)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          padding: const EdgeInsets.all(8),
        ),
        SpGridItem(
          xs: 12,
          sm: 6,
          md: 4,
          lg: 3,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 3.0),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            padding: EdgeInsets.all(10),
            height: 300,
            child: Container(
              color: Colors.white,
              height: 300,
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: AutoSizeText("Excesso de marcha lenta",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 20)),
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Divider(
                          height: 5,
                          thickness: 1,
                          color: Colors.black12,
                        )
                      ],
                    )),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          'Total de infrações',
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          '478',
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 28),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText("Principal infrator",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 18)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText("Motorista não identificado",
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 12)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                            height: 50,
                            width: 200,
                            child: Column(
                              children: [
                                Divider(
                                  height: 5,
                                  thickness: 1,
                                  color: Colors.black12,
                                )
                              ],
                            )),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerRight,
                        child: AutoSizeText("140",
                            style:
                                TextStyle(color: Colors.black, fontSize: 22)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 50,
                          width: 200,
                          child: AutoSizeText("17.190",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 12)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          padding: const EdgeInsets.all(10),
        ),
        SpGridItem(
          xs: 12,
          sm: 6,
          md: 4,
          lg: 3,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 3.0),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            padding: EdgeInsets.all(10),
            height: 300,
            child: Container(
              color: Colors.white,
              height: 300,
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: AutoSizeText("Embreagem",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 20)),
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Divider(
                          height: 5,
                          thickness: 1,
                          color: Colors.black12,
                        )
                      ],
                    )),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          'Total de infrações',
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          '47',
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 28),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText("Principal infrator",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 18)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText("Motorista não identificado",
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 12)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                            height: 50,
                            width: 200,
                            child: Column(
                              children: [
                                Divider(
                                  height: 5,
                                  thickness: 1,
                                  color: Colors.black12,
                                )
                              ],
                            )),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerRight,
                        child: AutoSizeText("30",
                            style:
                                TextStyle(color: Colors.black, fontSize: 22)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 50,
                          width: 200,
                          child: AutoSizeText("17.190",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 12)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          padding: const EdgeInsets.all(8),
        ),
        SpGridItem(
          xs: 12,
          sm: 6,
          md: 4,
          lg: 3,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 3.0),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            padding: EdgeInsets.all(10),
            height: 300,
            child: Container(
              color: Colors.white,
              height: 300,
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: AutoSizeText("Banguela",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 20)),
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Divider(
                          height: 5,
                          thickness: 1,
                          color: Colors.black12,
                        )
                      ],
                    )),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          'Total de infrações',
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          '47',
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 28),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText("Principal infrator",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 18)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText("Motorista não identificado",
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 12)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                            height: 50,
                            width: 200,
                            child: Column(
                              children: [
                                Divider(
                                  height: 5,
                                  thickness: 1,
                                  color: Colors.black12,
                                )
                              ],
                            )),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerRight,
                        child: AutoSizeText("88",
                            style:
                                TextStyle(color: Colors.black, fontSize: 22)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 50,
                          width: 200,
                          child: AutoSizeText("17.190",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 12)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          padding: const EdgeInsets.all(8),
        ),
        SpGridItem(
          xs: 12,
          sm: 6,
          md: 4,
          lg: 3,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 3.0),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            padding: EdgeInsets.all(10),
            height: 300,
            child: Container(
              color: Colors.white,
              height: 300,
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: AutoSizeText("Excesso de RPM",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 20)),
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Divider(
                          height: 5,
                          thickness: 1,
                          color: Colors.black12,
                        )
                      ],
                    )),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          'Total de infrações',
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 20),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          '7',
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 28),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText("Principal infrator",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 18)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText("Motorista não identificado",
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 12)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                            height: 50,
                            width: 200,
                            child: Column(
                              children: [
                                Divider(
                                  height: 5,
                                  thickness: 1,
                                  color: Colors.black12,
                                )
                              ],
                            )),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerRight,
                        child: AutoSizeText("3",
                            style:
                                TextStyle(color: Colors.black, fontSize: 22)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 50,
                          width: 200,
                          child: AutoSizeText("17.190",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 12)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          padding: const EdgeInsets.all(8),
        ),
      ]),
    );
  }
}
