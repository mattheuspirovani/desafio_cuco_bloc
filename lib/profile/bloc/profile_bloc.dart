import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';
import 'package:user_repository/user_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(ProfileInitial()) {
    on<ProfileLoad>(_onProfileLoad);
  }
  late final UserRepository _userRepository;

  _onProfileLoad(ProfileLoad event, Emitter<ProfileState> emit) async {
    try {
      emit(ProfileLoading());
      await Future.delayed(const Duration(seconds: 2));
      var user = await _userRepository.load();
      emit(ProfileReady(user));
    } on Exception {
      emit(ProfileFailedLoad());
    }
  }
}
