import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class SecondLevelItem3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/secondLevelItem3',
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, top: 10),
        child: Image.network(
          'https://snz04pap002files.storage.live.com/y4mKsXGBFMyS86Mlb6yRXuFXqyZGwT7rBJ8oiXatmzcGbYVbuKjAukMvG7hl5dSnz1EsCRGvG9rTpyDuw3DDIcloGsTIzpHBvBwFjlV3bFgfPtBnUpVNhKrYd0lE0I5Yu8N1W5al2XadDX27Y9o5KKXGnCOiJ5WvoWmvbKbyFdupcMYf8LV4kE6xCw6kOqU-_S0n-IRVyGZdmP_OanemvA4QsF10kv4pufjjO0wITv-PMM?encodeFailures=1&width=1531&height=842',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
