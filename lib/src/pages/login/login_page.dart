import 'package:ecommerce_flutter_app/src/pages/login/widgets/appbar.dart';
import 'package:ecommerce_flutter_app/src/pages/login/widgets/button.dart';
import 'package:ecommerce_flutter_app/src/pages/login/widgets/forgot_password.dart';
import 'package:ecommerce_flutter_app/src/pages/login/widgets/text_field.dart';
import 'package:ecommerce_flutter_app/src/pages/login/widgets/third_party_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: buildAppBar(),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildThirdPartyLogin(context),
                Center(
                    child: reusableText("Or user your email account to login")),
                Container(
                  margin: EdgeInsets.only(top: 36.h),
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText("Email"),
                      SizedBox(height: 5.h),
                      buildTextField(
                          "Enter your email address", "email", "user"),
                      reusableText("Password"),
                      SizedBox(height: 5.h),
                      buildTextField("Enter your password", "password", "lock"),
                    ],
                  ),
                ),
                forgotPassword(),
                buildButton("Log In", "login"),
                buildButton("Register", "register"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
