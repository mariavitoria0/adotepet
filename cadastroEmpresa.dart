import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class CadastroEmpresa extends StatelessWidget {
  const CadastroEmpresa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Crie sua Conta',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Instituição',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  height: 45,
                  child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Associação Jobs',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Testando';
                        }
                        return null;
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'CNPJ:',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  height: 45,
                  child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'xx.xxx.xxx/xxxx-xx',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Testando';
                        }
                        return null;
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'E-mail:',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  height: 45,
                  child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'associacao@email.com',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Testando';
                        }
                        return null;
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Descrição:',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  height: 45,
                  child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Somos uma instituição de caridade...',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Testando';
                        }
                        return null;
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Localização:',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  height: 45,
                  child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'R. Cataca, Bairro Novo...',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Testando';
                        }
                        return null;
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Dados bancários:',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  height: 45,
                  child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Pix: chavexxx Conta Corrente: 000',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10))),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Testando';
                        }
                        return null;
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Senha:',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  height: 45,
                  child: TextFormField(
                      decoration: InputDecoration(
                          hintText: '********',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10))),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Testando';
                        }
                        return null;
                      }),
                ),
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
                padding: EdgeInsets.only(bottom: 0.0),
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
                        minimumSize: MaterialStateProperty.all(Size(100, 30))),
                    child: const Text(
                      'Adicionar',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Otimo'),
                      ));
                    }
                  },
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(300, 40))),
                  child: const Text(
                    'Entrar',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
