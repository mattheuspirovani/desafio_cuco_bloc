import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

//Principal Bloc do App, responsável por gerenciar o estado macro
//Estados:
// - AppLoading
//  Nesse estado o app está tentando carregar as configurações básicas.
// Caso haja algum problema nessa etapa é emitido o estado AppFailedLoading.
// - AppFailedLoading
//  O app entra nesse estado caso tenha ocorrido algum problema de inicialização.
// Como, por exemplo, ausência de internet.
// - AppReady
//  Estado do app após o carregamento inicial ter sido concluído com sucesso.
// - AppOffline
//  Caso o app entre no estado Offline, por falta de conectividade com a internet,
// um snackbar é exibido para o usuário informado da ausência de internet.
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
    on<AppLoad>(_onAppLoad);
    on<AppConnectivityChange>(_onConnectivityChange);

    _connectivitySubscription = Connectivity()
        .onConnectivityChanged
        .listen((event) => add(AppConnectivityChange(event)));
  }

  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  _onAppLoad(AppLoad event, Emitter<AppState> emit) async {
    try {
      emit(AppLoading());
      await Future.delayed(const Duration(seconds: 2));
      emit(AppReady(ConnectionStatus.unknow));
    } on Exception {
      emit(AppFailedLoad());
    }
  }

  _onConnectivityChange(AppConnectivityChange event, Emitter<AppState> emit) {
    if (event.connectivityResult != ConnectivityResult.none) {
      // Essa checagem é necessária, pois quando o aparelho volta a ter conexão
      // ele pode passar pela conexão movel e wifi, fazendo com o que o mesmo
      // estado seja emitido mais de uma vez
      /* if (state is AppOffline) {
        emit(AppOnline());
      } */

      emit(AppOnline());
    } else {
      emit(AppOffline());
    }
  }

  @override
  Future<void> close() {
    _connectivitySubscription.cancel();
    return super.close();
  }
}
