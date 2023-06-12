import 'package:equatable/equatable.dart';

class SplashState extends Equatable {
  const SplashState({this.isComplete});

  final bool? isComplete;
  @override
  List<Object?> get props => [isComplete];

  SplashState copyWith({bool? isComplete}) {
    return SplashState(
      isComplete: isComplete ?? this.isComplete,
    );
  }
}
