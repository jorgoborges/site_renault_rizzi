import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:site_renault_rizzi/interface/Tel_BackOffice.dart';
import 'package:site_renault_rizzi/interface/Tel_Senha.dart';


void main() {
  runApp(const T_Cargo());
}

class T_Cargo extends StatelessWidget {
  const T_Cargo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AllFieldsForm(),
    );
  }
}

class AllFieldsFormBloc extends FormBloc<String, String> {
  final text1 = TextFieldBloc();
  final text2 = TextFieldBloc();
  final text3 = TextFieldBloc();
  final text4 = TextFieldBloc();

  final boolean1 = BooleanFieldBloc();

  final boolean2 = BooleanFieldBloc();

  final select1 = SelectFieldBloc<String, dynamic>(
    items: [
      'Analista',
      'Consultor',
      'Professor',
      'Auditor',
      'Escritório',
    ],
  );
  final select2 = SelectFieldBloc<String, dynamic>(
    items: [
      'Gerente',
      'Supervisor',
    ],
  );
  final select3 = SelectFieldBloc<String, dynamic>(
    items: [
      'Vendas',
      'Pós Vendas',
      'Pós Interno',
    ],
  );
  final select4 = SelectFieldBloc<String, dynamic>(
    items: [
      'Garantia',
      'Calibração',
      'Cliente Mistério',
      'Interno',
    ],
  );
  final select5 = SelectFieldBloc<String, dynamic>(
    items: [
      'CPF',
      'CNPJ',
      'BIR',
      'CONTA',
    ],
  );

  final file = InputFieldBloc<File?, String>(initialValue: null);

  final date1 = InputFieldBloc<DateTime?, Object>(initialValue: null);

  final dateAndTime1 = InputFieldBloc<DateTime?, Object>(initialValue: null);

  final time1 = InputFieldBloc<TimeOfDay?, Object>(initialValue: null);

  final double1 = InputFieldBloc<double, dynamic>(
    initialValue: 0.5,
  );

  AllFieldsFormBloc() {
    addFieldBlocs(fieldBlocs: [
      text1,
      text2,
      text3,
      text4,
      boolean1,
      boolean2,
      select1,
      select2,
      select3,
      select4,
      select5,
      date1,
      dateAndTime1,
      time1,
      double1,
    ]);
  }

  @override
  void onSubmitting() async {
    try {
      await Future<void>.delayed(const Duration(milliseconds: 500));

      emitSuccess(canSubmitAgain: true);
    } catch (e) {
      emitFailure();
    }
  }
}

class AllFieldsForm extends StatelessWidget {
  const AllFieldsForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllFieldsFormBloc(),
      child: Builder(
        builder: (context) {
          final formBloc = BlocProvider.of<AllFieldsFormBloc>(context);

          return Theme(
            data: Theme.of(context).copyWith(
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: const Color(0xff1b5e20),
                actions: [
                  ElevatedButton.icon(
                    onPressed: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => Tel_BackOffice())),
                    icon: const Icon(Icons.logout),
                    label: const Text('Voltar',
                        style: TextStyle(fontSize: 14, color: Colors.black87)),
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                  ),
                ],
              ),
              floatingActionButton: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(height: 5, width: 50),
                  FloatingActionButton.extended(
                    heroTag: null,
                    onPressed: formBloc.submit,
                    icon: const Icon(Icons.send),
                    label: const Text(
                      'Enviar',
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    ),
                    backgroundColor: Colors.red,
                  ),
                ],
              ),
              body: FormBlocListener<AllFieldsFormBloc, String, String>(
                onSubmitting: (context, state) {
                  LoadingDialog.show(context);
                },
                onSuccess: (context, state) {
                  LoadingDialog.hide(context);

                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const SuccessScreen()));
                },
                onFailure: (context, state) {
                  LoadingDialog.hide(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.failureResponse!)));
                },
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: <Widget>[
                        Text('CADASTRO CARGO.',
                            style:
                            TextStyle(fontSize: 14, color: Colors.black87)),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text2,
                          decoration: const InputDecoration(
                            labelText: 'Autor da edição', //1
                            prefixIcon: Icon(Icons.person),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text3,
                          decoration: const InputDecoration(
                            labelText: 'Nome Cargo',
                            prefixIcon: Icon(Icons.edit),
                          ),
                        ),
                        DateTimeFieldBlocBuilder(
                          dateTimeFieldBloc: formBloc.dateAndTime1,
                          canSelectTime: true,
                          format: DateFormat('dd-MM-yyyy  hh:mm'),
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                          decoration: const InputDecoration(
                            labelText: 'Carimbo',
                            prefixIcon: Icon(Icons.date_range),
                            helperText: 'Data e Hora',
                          ),
                        ),
                        BlocBuilder<InputFieldBloc<File?, String>,
                            InputFieldBlocState<File?, String>>(
                            bloc: formBloc.file,
                            builder: (context, state) {
                              return Container();
                            })
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class LoadingDialog extends StatelessWidget {
  static void show(BuildContext context, {Key? key}) => showDialog<void>(
    context: context,
    useRootNavigator: false,
    barrierDismissible: false,
    builder: (_) => LoadingDialog(key: key),
  ).then((_) => FocusScope.of(context).requestFocus(FocusNode()));

  static void hide(BuildContext context) => Navigator.pop(context);

  const LoadingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Center(
        child: Card(
          child: Container(
            width: 80,
            height: 80,
            padding: const EdgeInsets.all(12.0),
            child: const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(Icons.tag_faces, size: 100),
            const SizedBox(height: 11),
            const Text(
              'Successo',
              style: TextStyle(fontSize: 11, color: Colors.green),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 11),
            ElevatedButton.icon(
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const T_Cargo())),
              icon: const Icon(Icons.bento_outlined),
              label: const Text('Novo Cadastro'),
            ),
            SizedBox(height: 11),
            ElevatedButton.icon(
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => Tel_BackOffice())),
              icon: const Icon(Icons.change_circle_sharp),
              label: const Text('Voltar'),
            ),
            SizedBox(height: 11),
            ElevatedButton.icon(
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => Tel_Senha())),
              icon: const Icon(Icons.exit_to_app),
              label: const Text('Sair Portal'),
            ),
          ],
        ),
      ),
    );
  }
}
