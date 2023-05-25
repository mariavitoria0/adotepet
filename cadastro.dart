import 'package:adotepet/cadastroEmpresa.dart';
import 'package:adotepet/cadastroUsuario.dart';
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 80, 197, 206),
        body: Container(
            padding: const EdgeInsets.symmetric(vertical: 200, horizontal: 30),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Quem é você',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CadastroEmpresa()));
                    },
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(300, 60)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
                    child: const Text(
                      'Sou uma instituição',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CadastroUsuario()));
                  },
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(300, 60)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ))),
                  child: const Text(
                    'Sou um voluntário',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ))
            ]

/*       
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 200, horizontal: 30),
            child: Form(
              key: _formKey,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Quem é você',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CadastroEmpresa()));
                      },
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(300, 60)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ))),
                      child: const Text(
                        'Sou uma instituição',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      )),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CadastroUsuario()));
                    },
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(300, 60)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
                    child: const Text(
                      'Sou um voluntário',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ))
              ]),
            ))
            */
                )));
  }
}
