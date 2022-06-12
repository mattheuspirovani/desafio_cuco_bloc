import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets/widgets.dart';

import '../bloc/friend_bloc.dart';

class FriendListFailedLoadWidget extends StatelessWidget {
  const FriendListFailedLoadWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EmptyStateWidget(
        onRetryPressed: () => context.read<FriendBloc>().add(FriendListLoad()));
  }
}
