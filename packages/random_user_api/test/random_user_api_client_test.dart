import 'package:http/http.dart' as http;

import 'package:mocktail/mocktail.dart';
import 'package:random_user_api/random_user_api.dart';
import 'package:test/test.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Fake implements Uri {}

void main() {
  group('RandomUserAPIClient', () {
    late http.Client httpClient;
    late RandomUserApiClient randomUserApiClient;

    setUpAll(() {
      registerFallbackValue(FakeUri());
    });

    setUp(() {
      httpClient = MockHttpClient();
      randomUserApiClient = RandomUserApiClient(httpClient: httpClient);
    });

    group('Construtor', () {
      test('Deve retornar uma instância mesmo sem injetar o HttpClient', () {
        expect(RandomUserApiClient(), isNotNull);
      });
    });

    test('Deve retornar LocationIdRequestFailure para requisições com falha',
        () async {
      final response = MockResponse();
      when(() => response.statusCode).thenReturn(400);
      when(() => httpClient.get(any())).thenAnswer((_) async => response);
      expect(
        () async => await randomUserApiClient.getUsers(),
        throwsA(isA<RandomUserRequestFailure>()),
      );
    });
  });
}
