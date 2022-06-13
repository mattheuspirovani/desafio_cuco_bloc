import 'package:desafio_cuco_bloc/friend/widgets/friend_list_failed_load_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friend_repository/friend_repository.dart';
import 'package:ndialog/ndialog.dart';

import '../bloc/friend_bloc.dart';
import '../widgets/widgets.dart';

class FriendPage extends StatelessWidget {
  const FriendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          FriendBloc(friendRepository: context.read<FriendRepository>())
            ..add(FriendListLoad()),
      child: const FriendView(),
    );
  }
}

class FriendView extends StatelessWidget {
  const FriendView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FriendBloc, FriendState>(
      listener: (context, state) async {
        if (state is FriendListFailedLoading) {
          await NAlertDialog(
            dialogStyle: DialogStyle(titleDivider: true),
            title: const Text("Ooopps"),
            content: Text(
              "Failed to load your friend list... ",
              style: Theme.of(context).textTheme.headline6,
              textAlign: TextAlign.center,
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    child: Text(
                      "Ok",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              )
            ],
          ).show(context);
        }
      },
      builder: (context, state) {
        if (state is FriendInitial || state is FriendListLoading) {
          return const FriendListSkeletonWidget();
        } else if (state is FriendListReady) {
          var friends = state.friends;
          return FriendListWidget(friends: friends);
        } else {
          return const FriendListFailedLoadWidget();
        }
      },
    );
  }
}
