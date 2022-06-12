import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'models/models.dart';

class RandomUserRequestFailure implements Exception {}

/// {@template meta_random_user_api_client}
/// Dart API Client which wraps the [RandomUser API](https://randomuser.me/api/).
/// {@endtemplate}
class RandomUserApiClient {
  /// {@macro meta_random_user_api_client}
  RandomUserApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseUrl = 'randomuser.me';
  final http.Client _httpClient;

  Future<Response> getUsers({int itemsPerPage = 15}) async {
    final userRequest =
        Uri.https(_baseUrl, '/api', {'results': itemsPerPage.toString()});
    final userResponse = await _httpClient.get(userRequest);

    if (userResponse.statusCode != 200) {
      throw RandomUserRequestFailure();
    }

    final usersJson = jsonDecode(
      userResponse.body,
    );

    return Response.fromJson(usersJson);
  }
}
