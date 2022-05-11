import 'dart:ffi';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learnflu/Screens/Login/components/background.dart';
import 'package:learnflu/Screens/SignUp/SignUp.dart';
import 'package:learnflu/components/aready_have.dart';
import 'package:learnflu/components/rounded_button.dart';
import 'package:learnflu/components/rounded_password.dart';
import 'package:learnflu/components/rounded_text_field.dart';
import 'package:learnflu/components/text_field_conatainer.dart';
import 'package:learnflu/constants.dart';
import 'package:http/http.dart' as http;
import 'package:learnflu/models/login_req_modal.dart';
import 'package:learnflu/models/login_res_modal.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var emailControllar = TextEditingController();
    var passControllar = TextEditingController();
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputFeild(
            controller: emailControllar,
            hintText: "Enter Your Email ID",
            onChange: (value) {},
          ),
          SizedBox(height: size.height * 0.02),
          RoundedPassword(
            onChange: (value) {},
            controller: passControllar,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            press: () {},
            text: "LOGIN",
            color: kPrimaryColor,
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(press: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) {
              return SignUpScreen();
            })));
          })
        ],
      ),
    );  
  }
}