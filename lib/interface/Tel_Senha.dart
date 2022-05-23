import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:site_renault_rizzi/interface/Tel_Menu.dart';

void main() {
  runApp(Tel_Senha());
}

class Tel_Senha extends StatefulWidget {
  @override
  _Tel_SenhaState createState() => _Tel_SenhaState();
}

class _Tel_SenhaState extends State<Tel_Senha> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.green,
          colorScheme:
              ThemeData.light().colorScheme.copyWith(primary: Colors.green)),
      home: PasswordApp(),
    );
  }
}

class PasswordApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Campo de Senha'),
          ),
          body: ListView(
            children: <Widget>[
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: PasswordField(
                  backgroundColor: Colors.red.shade100,
                  controller: TextEditingController(text: 'senha'),
                  errorMessage:
                      'necessário pelo menos 1 letra e número 5+caracteres',
                  passwordConstraint: r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{5,}$',
                  inputDecoration: PasswordDecoration(
                    inputPadding: const EdgeInsets.symmetric(horizontal: 10),
                    suffixIcon: const Icon(
                      Icons.key,
                      color: Colors.grey,
                    ),
                    inputStyle: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  hintText: 'Senha',
                  onChanged: (x) {
                    print(x);
                  },
                  border: PasswordBorder(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(width: 2, color: Colors.red.shade200),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: PasswordField(
                  color: Colors.blue,
                  passwordConstraint: r'.*[@$#.*].*',
                  inputDecoration: PasswordDecoration(),
                  // hintText: 'must have special characters',
                  border: PasswordBorder(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue.shade100,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue.shade100,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(width: 2, color: Colors.red.shade200),
                    ),
                  ),
                  errorMessage: 'deve conter caractere especial . * @ # \$',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PasswordField(
                  backgroundColor: Colors.blue.withOpacity(0.2),
                  errorMessage: '''
- Uma letra maiúscula
- Uma letra minúscula
- Um dígito
- Um caractere especial
- Um comprimento mínimo de 8 caracteres
                 ''',
                  hintText: 'Restrição de senha padrão',
                  inputDecoration: PasswordDecoration(
                    inputPadding: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                  border: PasswordBorder(
                    border: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 0, color: Colors.grey),
                        borderRadius: BorderRadius.circular(25.7)),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 0, color: Colors.grey),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 0, color: Colors.grey),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 5,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 1,
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => Tel_Menu())),
                      icon: const Icon(Icons.logout),
                      label: const Text('Entrar',
                          style:
                              TextStyle(fontSize: 14, color: Colors.black87)),
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 1,
                      width: 1,
                    ),
                  ),
                ],
              ),

            ],
          )),
    );
  }
}
