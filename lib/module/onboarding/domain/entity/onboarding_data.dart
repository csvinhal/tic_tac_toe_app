import 'package:equatable/equatable.dart';

class OnboardingData extends Equatable {
  final String path;
  final String title;
  final String description;

  const OnboardingData({
    required this.path,
    required this.title,
    required this.description,
  });

  @override
  List<Object?> get props => [
        path,
        title,
        description,
      ];
}
