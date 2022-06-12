part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {
  final int currentIndex;
  final String tabName;
  const HomeState(this.currentIndex, this.tabName);
}

class HomeInitial extends HomeState {
  const HomeInitial() : super(0, 'Profile');
  @override
  List<Object?> get props => [currentIndex, tabName];
}

class HomeTabProfile extends HomeState {
  const HomeTabProfile() : super(0, 'Profile');
  @override
  List<Object?> get props => [currentIndex, tabName];
}

class HomeTabFriend extends HomeState {
  const HomeTabFriend() : super(1, 'Find Friends');
  @override
  List<Object?> get props => [currentIndex, tabName];
}
