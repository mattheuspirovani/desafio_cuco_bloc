import 'package:equatable/equatable.dart';

import '../models.dart';

class User extends Equatable {
  final String fullName;
  final String email;
  final String cellphone;
  final String phone;
  final Avatar avatar;

  const User(
      this.fullName, this.email, this.cellphone, this.phone, this.avatar);

  @override
  List<Object?> get props => [email];
}
