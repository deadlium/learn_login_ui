import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learnflu/Screens/Login/Login_screen.dart';
import 'package:learnflu/Screens/SignUp/components/background.dart';
import 'package:learnflu/components/aready_have.dart';
import 'package:learnflu/components/rounded_button.dart';
import 'package:learnflu/components/rounded_password.dart';
import 'package:learnflu/components/rounded_text_field.dart';
import 'package:learnflu/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var emailControllar;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "SIGNUP",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/icons/signup.svg",
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
            controller: emailControllar,
            onChange: (value) {},
          ),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            press: () {},
            text: "SIGNUP",
            color: kPrimaryColor,
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    ));
  }
}
