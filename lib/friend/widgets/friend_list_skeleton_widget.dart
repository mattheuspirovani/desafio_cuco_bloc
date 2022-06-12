import 'package:constants/constants.dart' as constants;
import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class FriendListSkeletonWidget extends StatelessWidget {
  const FriendListSkeletonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SkeletonListView(
      itemBuilder: (p0, p1) {
        return Column(
          children: [
            constants.mediumVerticalSpace,
            Row(
              children: [
                const SkeletonAvatar(
                  style: SkeletonAvatarStyle(
                      shape: BoxShape.circle, width: 50, height: 50),
                ),
                constants.mediumVerticalSpace,
                Expanded(
                  child: SkeletonParagraph(
                    style: SkeletonParagraphStyle(
                        lines: 2,
                        spacing: 6,
                        lineStyle: SkeletonLineStyle(
                          randomLength: true,
                          height: 10,
                          borderRadius: BorderRadius.circular(8),
                          minLength: MediaQuery.of(context).size.width / 6,
                          maxLength: MediaQuery.of(context).size.width / 3,
                        )),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
