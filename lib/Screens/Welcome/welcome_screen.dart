import 'package:flutter/material.dart';
import 'package:learnflu/Screens/Welcome/components/body.dart';

// ignore: camel_case_types
class welcomeScreen extends StatelessWidget {
  const welcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
