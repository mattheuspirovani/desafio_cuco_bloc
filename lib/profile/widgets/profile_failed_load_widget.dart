import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:widgets/widgets.dart';

import '../bloc/profile_bloc.dart';

class ProfileFailedLoadWidget extends StatelessWidget {
  const ProfileFailedLoadWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EmptyStateWidget(
      onRetryPressed: () => context.read<ProfileBloc>().add(ProfileLoad()),
    );
  }
}
