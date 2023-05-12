import 'package:equatable/equatable.dart';

class OnboardingData extends Equatable {
  const OnboardingData({
    required this.path,
    required this.title,
    required this.description,
  });

  final String path;
  final String title;
  final String description;

  @override
  List<Object?> get props => [
        path,
        title,
        description,
      ];
}
