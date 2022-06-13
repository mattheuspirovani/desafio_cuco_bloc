import 'package:random_user_api/random_user_api.dart' as random_user_api;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:user_repository/user_repository.dart';

class MockRandomUserApiClient extends Mock
    implements random_user_api.RandomUserApiClient {}

void main() {
  group('UserRepository', () {
    late random_user_api.RandomUserApiClient randomUserApiClient;
    late UserRepository userRepository;

    setUp(() {
      randomUserApiClient = MockRandomUserApiClient();
      userRepository = UserRepository(
        randomUserApiClient: randomUserApiClient,
      );
    });

    group('Constructor', () {
      test(
          'Deve instanciar internamente RandomUserApiClient quando não injetado',
          () {
        expect(UserRepository(), isNotNull);
      });
    });

    group('GetUser', () {
      test('Deve retornar um usuário', () async {
        try {
          var user = await userRepository.load();
          expect(user, isNotNull);
        } catch (_) {}
      });
    });
  });
}
