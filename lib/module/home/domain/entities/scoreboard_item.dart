import 'package:equatable/equatable.dart';

class ScoreboardItem extends Equatable {
  const ScoreboardItem({
    required this.nickname,
    required this.value,
  });

  final String nickname;
  final num value;

  @override
  List<Object> get props => [nickname, value];
}
