import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitial()) {
    on<HomeTabSelection>(_onTabSelection);
  }

  _onTabSelection(HomeTabSelection event, emit) {
    switch (event.index) {
      case 0:
        emit(const HomeTabProfile());
        break;
      case 1:
        emit(const HomeTabFriend());
        break;
      default:
        emit(const HomeTabProfile());
    }
  }
}
