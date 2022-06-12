import 'package:equatable/equatable.dart';

class Avatar extends Equatable {
  final String medium;
  final String large;
  final String thumbnail;

  const Avatar(this.medium, this.large, this.thumbnail);

  @override
  List<Object?> get props => [medium, large, thumbnail];
}
