part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class EmailEvent extends LoginEvent {
  final String email;
  EmailEvent(this.email);
}

class PasswordEvent extends LoginEvent {
  final String password;
  PasswordEvent(this.password);
}
