part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeTabSelection extends HomeEvent {
  final int index;
  HomeTabSelection(this.index);
}
