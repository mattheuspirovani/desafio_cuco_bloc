part of 'app_bloc.dart';

enum ConnectionStatus { unknow, online, offline }

@immutable
abstract class AppState extends Equatable {}

class AppInitial extends AppState {
  @override
  List<Object?> get props => [];
}

class AppLoading extends AppState {
  @override
  List<Object?> get props => [];
}

class AppReady extends AppState {
  final ConnectionStatus connectionStatus;

  AppReady(this.connectionStatus);

  @override
  List<Object?> get props => [connectionStatus];
}

class AppFailedLoad extends AppState {
  @override
  List<Object?> get props => [];
}

class AppOffline extends AppState {
  @override
  List<Object?> get props => [];
}

class AppOnline extends AppState {
  @override
  List<Object?> get props => [];
}
