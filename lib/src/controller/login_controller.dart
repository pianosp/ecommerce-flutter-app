import 'package:ecommerce_flutter_app/src/bloc/login/login_bloc.dart';
import 'package:ecommerce_flutter_app/src/bloc/login/login_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginController {
  final BuildContext context;
  const LoginController({required this.context});

  Future<void> handleLogin(String type) async {
    try {
      if (type == "email") {
        final state = context.read<LoginBloc>().state;
        String email = state.email;
        String password = state.password;
        if (email.isEmpty) {}
        if (password.isEmpty) {}
        try {
          final credentials = await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: email, password: password);
          if (credentials.user == null) {
            //
          }
          if (credentials.user!.emailVerified) {
            //
          }

          var user = credentials.user;
          if (user != null) {
            //got verified user
          } else {
            //error getting user from firebase auth
          }
        } catch (e) {}
      }
    } catch (e) {}
  }
}
