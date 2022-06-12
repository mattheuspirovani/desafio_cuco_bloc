import 'package:constants/constants.dart' as constants;
import 'package:flutter/material.dart';
import 'package:models/models.dart';

class ProfileDetailWidget extends StatelessWidget {
  final User user;
  const ProfileDetailWidget(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _detailItem('Email', user.email),
            constants.mediumVerticalSpace,
            _detailItem('Phone', user.phone),
            constants.mediumVerticalSpace,
            _detailItem('Cellphone', user.cellphone),
          ],
        ),
      ),
    );
  }

  Widget _detailItem(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Expanded(
          child: Text(
            value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
          ),
        )
      ],
    );
  }
}
