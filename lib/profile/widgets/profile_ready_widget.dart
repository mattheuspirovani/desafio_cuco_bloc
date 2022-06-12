import 'package:flutter/material.dart';
import 'package:models/models.dart';

import 'package:constants/constants.dart' as constants;
import 'widgets.dart';

class ProfileReadyWidget extends StatelessWidget {
  final User user;
  const ProfileReadyWidget(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            constants.mediumVerticalSpace,
            EditAvatarWidget(user.avatar.large),
            constants.mediumVerticalSpace,
            Text(
              user.fullName,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            constants.mediumVerticalSpace,
            SizedBox(
              height: 8,
              width: MediaQuery.of(context).size.width,
              child: Divider(
                thickness: 2,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            constants.largeVerticalSpace,
            ProfileDetailWidget(user)
          ],
        ),
      ),
    );
  }
}
