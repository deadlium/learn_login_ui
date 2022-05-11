import 'package:flutter/material.dart';
import 'package:learnflu/components/text_field_conatainer.dart';
import 'package:learnflu/constants.dart';

class RoundedPassword extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChange;
  const RoundedPassword({
    Key? key,
    required this.controller,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFeildContain(
      child: TextField(
        obscureText: true,
        onChanged: onChange,
        controller: controller,
        decoration: const InputDecoration(
          hintText: "Enter Your Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
