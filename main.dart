import 'package:adotepet/cadastro.dart';
import 'package:adotepet/cadastroAnimal.dart';
import 'package:adotepet/login.dart';

import 'package:flutter/material.dart';

main() => runApp(MaterialApp(home: Login()));

class AdoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}
