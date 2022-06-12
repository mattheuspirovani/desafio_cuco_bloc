import 'package:flutter/material.dart';
import 'package:friend_repository/friend_repository.dart';
import 'package:user_repository/user_repository.dart';

import 'bootstrap.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  bootstrap(
      userRepository: UserRepository(), friendRepository: FriendRepository());
}
