part of 'welcome_bloc.dart';

abstract class WelcomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class WelcomeEventTransition extends WelcomeEvent {
  final int page;
  WelcomeEventTransition(this.page);
}
