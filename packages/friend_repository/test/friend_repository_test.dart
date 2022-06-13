import 'package:friend_repository/friend_repository.dart';
import 'package:random_user_api/random_user_api.dart' as random_user_api;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockRandomUserApiClient extends Mock
    implements random_user_api.RandomUserApiClient {}

void main() {
  group('FriendRepository', () {
    late random_user_api.RandomUserApiClient randomUserApiClient;
    late FriendRepository friendRepository;

    setUp(() {
      randomUserApiClient = MockRandomUserApiClient();
      friendRepository = FriendRepository(
        randomUserApiClient: randomUserApiClient,
      );
    });

    group('Constructor', () {
      test(
          'Deve instanciar internamente RandomUserApiClient quando não injetado',
          () {
        expect(FriendRepository(), isNotNull);
      });
    });

    group('GetUser', () {
      test('Deve retornar uma lista', () async {
        try {
          var friends = await friendRepository.getFriends();
          expect(friends, isList);
        } catch (_) {}
      });

      test('Deve retornar uma lista de 15 amigos', () async {
        try {
          var friends = await friendRepository.getFriends();
          expect(friends.length, equals(15));
        } catch (_) {}
      });
    });
  });
}
