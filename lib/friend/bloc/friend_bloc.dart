import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friend_repository/friend_repository.dart';
import 'package:models/models.dart';

part 'friend_event.dart';
part 'friend_state.dart';

class FriendBloc extends Bloc<FriendEvent, FriendState> {
  FriendBloc({required FriendRepository friendRepository})
      : _friendRepository = friendRepository,
        super(FriendInitial()) {
    on<FriendListLoad>(_onFriendListLoading);
  }

  final FriendRepository _friendRepository;

  _onFriendListLoading(FriendListLoad event, Emitter<FriendState> emit) async {
    try {
      emit(FriendListLoading());
      await Future.delayed(const Duration(seconds: 2));
      var friends = await _friendRepository.getFriends();
      emit(FriendListReady(friends));
    } on Exception {
      emit(FriendListFailedLoading());
    }
  }
}
