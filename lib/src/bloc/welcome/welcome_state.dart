part of 'welcome_bloc.dart';

class WelcomeState extends Equatable {
  final int page;
  const WelcomeState({this.page = 0});

  WelcomeState copyWith({
    int? page,
  }) {
    return WelcomeState(
      page: page ?? this.page,
    );
  }

  @override
  List<Object> get props => [page];
}
