import 'package:equatable/equatable.dart';

class OnboardingState extends Equatable {
  final int page;

  const OnboardingState({required this.page});

  OnboardingState copyWith(int? page) {
    return OnboardingState(page: page ?? this.page);
  }

  @override
  List<Object?> get props => [page];
}
