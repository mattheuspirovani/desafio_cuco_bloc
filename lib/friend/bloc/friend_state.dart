part of 'friend_bloc.dart';

@immutable
abstract class FriendState extends Equatable {}

class FriendInitial extends FriendState {
  @override
  List<Object?> get props => [];
}

class FriendListLoading extends FriendState {
  @override
  List<Object?> get props => [];
}

class FriendListReady extends FriendState {
  final List<User> friends;
  FriendListReady(this.friends);
  @override
  List<Object?> get props => [friends];
}

class FriendListFailedLoading extends FriendState {
  @override
  List<Object?> get props => [];
}
