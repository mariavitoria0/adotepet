import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class MyWidget extends StatefulWidget {
  @override
  CadastroAnimal createState() => CadastroAnimal();
}

class CadastroAnimal extends State<MyWidget> {
  bool isSelectedMacho = false;
  bool isSelectedFemea = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 150.0, horizontal: 30.0),
          child: Form(
              key: _formKey,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Cadastre o animal',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Nome:',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Thor',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Testando';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Descrição:',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Foi recolhido da estrada, andando des...',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Testando';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sexo:',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: ChoiceChip(
                        label: const Text(
                          "Femêa",
                        ),
                        selected: isSelectedFemea,
                        selectedColor: Color.fromARGB(255, 232, 93, 139),
                        onSelected: (newState) {
                          setState(() {
                            if (!isSelectedMacho) {
                              isSelectedFemea = newState;
                            }
                            if (!isSelectedFemea && !isSelectedMacho) {
                              isSelectedFemea = false;
                            }
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: ChoiceChip(
                        label: const Text(
                          "Macho",
                        ),
                        selected: isSelectedMacho,
                        selectedColor: Color.fromARGB(255, 57, 111, 199),
                        onSelected: (newState) {
                          setState(() {
                            if (!isSelectedFemea) {
                              isSelectedMacho = newState;
                            }
                            if (!isSelectedFemea && !isSelectedMacho) {
                              isSelectedMacho = false;
                            }
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Clique para adicionar uma foto:',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Otimo'),
                          ));
                        }
                      },
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(Size(100, 40))),
                      child: const Text(
                        'Adicionar',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Otimo'),
                        ));
                      }
                    },
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(300, 40))),
                    child: const Text(
                      'Cadastrar',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ))
              ])),
        ));
  }
}
