import 'package:equatable/equatable.dart';
import 'package:tic_tac_toe_app/core/core.dart';

class OnboardingData extends Equatable {
  const OnboardingData({
    required this.image,
    required this.title,
    required this.description,
  });

  final ImageAssetValue image;
  final String title;
  final String description;

  @override
  List<Object?> get props => [
        image,
        title,
        description,
      ];
}
