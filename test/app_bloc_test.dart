import 'package:bloc_test/bloc_test.dart';
import 'package:desafio_cuco_bloc/app/bloc/app_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:user_repository/user_repository.dart' as user_repository;

class MockUserRepository extends Mock
    implements user_repository.UserRepository {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('AppBloc', () {
    late AppBloc appBloc;
    late user_repository.UserRepository userRepository;

    setUp(() async {
      appBloc = AppBloc();
      userRepository = MockUserRepository();
    });

    blocTest<AppBloc, AppState>(
        'Deve emitir AppLoading quando for emitido o envento AppLoad',
        build: () => appBloc,
        act: (appBloc) => appBloc.add(AppLoad()),
        expect: () => <AppState>[AppLoading()]);
  });
}
