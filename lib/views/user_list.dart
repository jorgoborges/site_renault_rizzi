import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:site_renault_rizzi/components/user_tile.dart';
import 'package:site_renault_rizzi/provider/users.dart';

import '../routes/app_routes.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF007a33),
        actions: <Widget>[
          IconButton(
            iconSize: 50,
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.USER_FORM,
              );
            },
            color: Colors.white,
          ),
        ],
        title: Text('Lista Usuários Cadastrados'),
      ),
      body: ListView.builder(
          itemCount: users.count,
          itemBuilder: (ctx, i) => UserTile(users.byIndex(i))),
    );
  }
}
