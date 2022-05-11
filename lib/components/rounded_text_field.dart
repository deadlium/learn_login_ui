import 'package:flutter/material.dart';
import 'package:learnflu/components/text_field_conatainer.dart';
import 'package:learnflu/constants.dart';

class RoundedInputFeild extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChange;
  const RoundedInputFeild(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.icon = Icons.person,
      required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFeildContain(
        child: TextField(
      onChanged: onChange,
      controller: controller,
      decoration: InputDecoration(
        icon: Icon(
          icon,
          color: kPrimaryColor,
        ),
        hintText: hintText,
        border: InputBorder.none,
      ),
    ));
  }
}
