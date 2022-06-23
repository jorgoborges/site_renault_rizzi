import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          actions: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: Image.network(
                      'data:image/png;base64,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',
                      fit: BoxFit.fill,
                      width: 60,
                      height: 60,
                    ),
                  ),
                ],
              ),
            ),
          ],
          backgroundColor: const Color(0xff041e42),
          title: const Text('Portal 4.0'),
        ),
        body: Stack(children: [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.network(
                'https://snz04pap002files.storage.live.com/y4mh4Jfq9lNgw9RWMDnghKVY93nPF6gn7z0Dv51lwcJf1VVE-KZkXxDIo74q2L9xN3fqfq0oDcHyzXCvYoS0JTHyjSwlJex0kHQX-kw9a2hOk1_YWYbYOhHbsKPgu1UnyRFOB6KhxKcwr0IEEKHaQLfRGkl_6-XogGmwEa_xjMgrHtCKWDx7Rk-n0TYTfG8sdRMXsLdxPGAXXGqB3aUC-AQyfcLzqV8zX7sVKjQY9JFFEI?encodeFailures=1&width=1537&height=433',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  child: Container(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                          ),
                          Column(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                child: Column(
                                  children: [
                                    makeInput(label: "Email"),
                                    makeInput(
                                        label: "Password", obsureText: true),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(70),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                child: Container(
                                  padding: EdgeInsets.only(top: 3, left: 3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border(
                                          bottom:
                                              BorderSide(color: Colors.black),
                                          top: BorderSide(color: Colors.black),
                                          right:
                                              BorderSide(color: Colors.black),
                                          left:
                                              BorderSide(color: Colors.black))),
                                  child: MaterialButton(
                                    minWidth: double.infinity,
                                    height: 60,
                                    onPressed: () =>
                                        Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (_) => SamplePagevwco()),
                                    ),
                                    color: Color(0xff041e42),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}

Widget makeInput({label, obsureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        ),
      ),
      SizedBox(
        height: 30,
      )
    ],
  );
}
