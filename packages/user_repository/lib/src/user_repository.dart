import 'package:models/models.dart';
import 'package:random_user_api/random_user_api.dart';

class UserRepository {
  UserRepository({RandomUserApiClient? randomUserApiClient})
      : _randomUserApiClient = randomUserApiClient ?? RandomUserApiClient();

  final RandomUserApiClient _randomUserApiClient;

  Future<User> load() async {
    final response = await _randomUserApiClient.getUsers(itemsPerPage: 1);
    return response.results
        .map((user) => User(
            '${user.name.first} ${user.name.last}',
            user.email,
            user.cellphone,
            user.phone,
            Avatar(user.picture.medium, user.picture.large,
                user.picture.thumbnail)))
        .toList()
        .first;
  }
}
