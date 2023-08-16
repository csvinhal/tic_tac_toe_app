import 'package:equatable/equatable.dart';

class HomeViewState extends Equatable {
  const HomeViewState({required this.currentIndex});

  final int currentIndex;

  HomeViewState copyWith(int? currentIndex) {
    return HomeViewState(currentIndex: currentIndex ?? this.currentIndex);
  }

  @override
  List<Object?> get props => [currentIndex];
}
