import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:site_renault_rizzi/interface/4BackOfficePanel.dart';

void main() {
  runApp(const CadastroBir());
}

class CadastroBir extends StatelessWidget {
  const CadastroBir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AllFieldsForm4(),
    );
  }
}

class AllFieldsForm4Bloc extends FormBloc<String, String> {
  final text1 = TextFieldBloc();
  final text2 = TextFieldBloc();
  final text3 = TextFieldBloc();
  final text4 = TextFieldBloc();
  final text5 = TextFieldBloc();
  final text6 = TextFieldBloc();
  final text7 = TextFieldBloc();
  final text8 = TextFieldBloc();
  final text9 = TextFieldBloc();
  final text10 = TextFieldBloc();
  final text11 = TextFieldBloc();
  final text12 = TextFieldBloc();
  final text13 = TextFieldBloc();
  final text14 = TextFieldBloc();
  final text15 = TextFieldBloc();
  final text16 = TextFieldBloc();
  final text17 = TextFieldBloc();
  final text18 = TextFieldBloc();
  final text19 = TextFieldBloc();
  final text20 = TextFieldBloc();
  final text21 = TextFieldBloc();
  final text22 = TextFieldBloc();
  final text23 = TextFieldBloc();
  final text24 = TextFieldBloc();
  final text25 = TextFieldBloc();

  final file = InputFieldBloc<File?, String>(initialValue: null);

  final date1 = InputFieldBloc<DateTime?, Object>(initialValue: null);

  final dateAndTime1 = InputFieldBloc<DateTime?, Object>(initialValue: null);

  final time1 = InputFieldBloc<TimeOfDay?, Object>(initialValue: null);

  final double1 = InputFieldBloc<double, dynamic>(
    initialValue: 0.5,
  );

  AllFieldsForm4Bloc() {
    addFieldBlocs(fieldBlocs: [
      text1,
      text2,
      text3,
      text4,
      text5,
      text6,
      text7,
      text8,
      text9,
      text10,
      text11,
      text12,
      text13,
      text14,
      text15,
      text16,
      text17,
      text18,
      text19,
      text20,
      text21,
      text22,
      text23,
      text24,
      text25,
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

class AllFieldsForm4 extends StatelessWidget {
  const AllFieldsForm4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllFieldsForm4Bloc(),
      child: Builder(
        builder: (context) {
          final formBloc = BlocProvider.of<AllFieldsForm4Bloc>(context);

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
                  title: const Text('Cad-Bir: Cadastro e Atualização ICB')),
              floatingActionButton: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(height: 5, width: 50),
                  FloatingActionButton.extended(
                    heroTag: null,
                    onPressed: formBloc.submit,
                    icon: const Icon(Icons.send),
                    label: const Text('Enviar'),
                  ),
                ],
              ),
              body: FormBlocListener<AllFieldsForm4Bloc, String, String>(
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
                            labelText: 'QTD',
                            prefixIcon: Icon(Icons.man),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text2,
                          decoration: const InputDecoration(
                            labelText: 'N.ºBIR',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text3,
                          decoration: const InputDecoration(
                            labelText: 'RAZÃO SOCIAL',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text4,
                          decoration: const InputDecoration(
                            labelText: 'RAZÃO SOCIAL',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text5,
                          decoration: const InputDecoration(
                            labelText: 'NOME_COMERCIAL',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text6,
                          decoration: const InputDecoration(
                            labelText: 'COD',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text7,
                          decoration: const InputDecoration(
                            labelText: 'FONE',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text8,
                          decoration: const InputDecoration(
                            labelText: 'FAX',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text9,
                          decoration: const InputDecoration(
                            labelText: 'ENDEREÇO',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text10,
                          decoration: const InputDecoration(
                            labelText: 'BAIRRO',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text11,
                          decoration: const InputDecoration(
                            labelText: 'CIDADE',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text12,
                          decoration: const InputDecoration(
                            labelText: 'ES',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text13,
                          decoration: const InputDecoration(
                            labelText: 'CEP',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text14,
                          decoration: const InputDecoration(
                            labelText: 'CNPJ',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text15,
                          decoration: const InputDecoration(
                            labelText: 'IE',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text16,
                          decoration: const InputDecoration(
                            labelText: 'TITULAR',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text17,
                          decoration: const InputDecoration(
                            labelText: 'TAM_SHOWROOM',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text19,
                          decoration: const InputDecoration(
                            labelText: 'CAT',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text19,
                          decoration: const InputDecoration(
                            labelText: 'REGIÃO',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text20,
                          decoration: const InputDecoration(
                            labelText: 'SETOR',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text21,
                          decoration: const InputDecoration(
                            labelText: 'REGIÃO_SETOR',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text22,
                          decoration: const InputDecoration(
                            labelText: 'Nº_BIR_MATRIZ',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text23,
                          decoration: const InputDecoration(
                            labelText: 'GRUPO',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text24,
                          decoration: const InputDecoration(
                            labelText: 'CONSULTOR_360',
                            prefixIcon: Icon(Icons.text_fields),
                          ),
                        ),
                        TextFieldBlocBuilder(
                          textFieldBloc: formBloc.text25,
                          decoration: const InputDecoration(
                            labelText: 'BIR_GRUPO',
                            prefixIcon: Icon(Icons.text_fields),
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
                            labelText: 'Ultimo ajuste cadastro',
                            prefixIcon: Icon(Icons.date_range),
                            helperText: 'Date and Time',
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
                  MaterialPageRoute(builder: (_) => const AllFieldsForm4())),
              icon: const Icon(Icons.replay),
              label: const Text('Novo Cadastro'),
            ),
            SizedBox(height: 11),
            ElevatedButton.icon(
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => BackOficcepanel())),
              icon: const Icon(Icons.settings_accessibility),
              label: const Text('texto'),
            ),
            SizedBox(height: 11),
            ElevatedButton.icon(
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => BackOficcepanel())),
              icon: const Icon(Icons.inventory_2_outlined),
              label: const Text('Texto'),
            ),
          ],
        ),
      ),
    );
  }
}
