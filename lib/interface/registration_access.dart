import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:site_renault_rizzi/interface/4BackOfficePanel.dart';


void main() {
  runApp(const RegistrationAccess());
}

class RegistrationAccess extends StatelessWidget {
  const RegistrationAccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AllFieldsForm2(),
    );
  }
}

class AllFieldsForm2Bloc extends FormBloc<String, String> {
  final text1 = TextFieldBloc();
  final text2 = TextFieldBloc();
  final text3 = TextFieldBloc();
  final text4 = TextFieldBloc();
  final text5 = TextFieldBloc();
  final text6 = TextFieldBloc();

  final boolean1 = BooleanFieldBloc();

  final boolean2 = BooleanFieldBloc();

  final select1 = SelectFieldBloc(
    items: ['7601086', '7600935'],
  );

  final select2 = SelectFieldBloc(
    items: [
      'Nível 1',
      'Nível 2',
      'Nível 3',
    ],
  );
  final file = InputFieldBloc<File?, String>(initialValue: null);

  final date1 = InputFieldBloc<DateTime?, Object>(initialValue: null);

  final dateAndTime1 = InputFieldBloc<DateTime?, Object>(initialValue: null);

  final time1 = InputFieldBloc<TimeOfDay?, Object>(initialValue: null);

  final double1 = InputFieldBloc<double, dynamic>(
    initialValue: 0.5,
  );

  AllFieldsForm2Bloc() {
    addFieldBlocs(fieldBlocs: [
      text1,
      text2,
      text3,
      text4,
      text5,
      text6,
      select1,
      select2,
      date1,
      dateAndTime1,
      time1,
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

class AllFieldsForm2 extends StatelessWidget {
  const AllFieldsForm2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllFieldsForm2Bloc(),
      child: Builder(
        builder: (context) {
          final formBloc = BlocProvider.of<AllFieldsForm2Bloc>(context);

          return Theme(
            data: Theme.of(context).copyWith(
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            child: Scaffold(
              appBar: AppBar(title: const Text('Cadastro Nível Acesso')),
              floatingActionButton: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(height: 12),
                  FloatingActionButton.extended(
                    heroTag: null,
                    onPressed: formBloc.submit,
                    icon: const Icon(Icons.send),
                    label: const Text(
                      'Efetivar',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              body: FormBlocListener<AllFieldsForm2Bloc, String, String>(
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
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text1,
                          decoration: const InputDecoration(
                            labelText: 'Autor',
                            prefixIcon: Icon(Icons.man),
                          ),
                        ),
                        DropdownFieldBlocBuilder<String>(
                          selectFieldBloc: formBloc.select1,
                          decoration: const InputDecoration(
                            labelText: 'Escolha sua BIR',
                            prefixIcon: Icon(Icons.work_outline_outlined),
                          ),
                          itemBuilder: (context, item) => FieldItem(
                            child: Text(item),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text2,
                          decoration: const InputDecoration(
                            labelText: 'Nome',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text3,
                          decoration: const InputDecoration(
                            labelText: 'SobreNome',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text4,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        DropdownFieldBlocBuilder<String>(
                          selectFieldBloc: formBloc.select2,
                          decoration: const InputDecoration(
                            labelText: 'Nível Acesso',
                            prefixIcon: Icon(Icons.key),
                          ),
                          itemBuilder: (context, item) => FieldItem(
                            child: Text(item),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text6,
                          decoration: const InputDecoration(
                            labelText: 'Senha Criada',
                            prefixIcon: Icon(Icons.login_sharp),
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
                            labelText: 'Data',
                            prefixIcon: Icon(Icons.date_range),
                            helperText: 'Date and Time',
                          ),
                        ),
                        TimeFieldBlocBuilder(
                          timeFieldBloc: formBloc.time1,
                          format: DateFormat('hh:mm a'),
                          initialTime: TimeOfDay.now(),
                          decoration: const InputDecoration(
                            labelText: 'Hora Liberação',
                            prefixIcon: Icon(Icons.access_time),
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
            const SizedBox(height: 10),
            const Text(
              'Sucesso',
              style: TextStyle(fontSize: 30, color: Colors.green),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BackOficcepanel()));
              },
              child: Text(
                'Voltar',
                style: TextStyle(fontSize: 30, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
