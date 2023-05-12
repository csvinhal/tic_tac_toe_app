import 'package:equatable/equatable.dart';

class OnboardingState extends Equatable {
  const OnboardingState({required this.page});

  final int page;

  OnboardingState copyWith(int? page) {
    return OnboardingState(page: page ?? this.page);
  }

  @override
  List<Object?> get props => [page];
}
