part of 'app_bloc.dart';

@immutable
abstract class AppEvent {}

class AppConnectivityChange extends AppEvent {
  final ConnectivityResult connectivityResult;
  AppConnectivityChange(this.connectivityResult);
}

class AppLoad extends AppEvent {}

class AppCheckConnectivity extends AppEvent {}
