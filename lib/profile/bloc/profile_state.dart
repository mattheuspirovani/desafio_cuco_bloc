part of 'profile_bloc.dart';

@immutable
abstract class ProfileState extends Equatable {}

class ProfileInitial extends ProfileState {
  @override
  List<Object?> get props => [];
}

class ProfileLoading extends ProfileState {
  @override
  List<Object?> get props => [];
}

class ProfileReady extends ProfileState {
  final User user;
  ProfileReady(this.user);
  @override
  List<Object?> get props => [user];
}

class ProfileFailedLoad extends ProfileState {
  @override
  List<Object?> get props => [];
}
