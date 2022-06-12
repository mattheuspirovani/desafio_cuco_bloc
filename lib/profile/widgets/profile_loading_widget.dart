import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';
import 'package:constants/constants.dart' as constants;

class ProfileLoadingWidget extends StatelessWidget {
  const ProfileLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            constants.mediumVerticalSpace,
            const SkeletonAvatar(
              style: SkeletonAvatarStyle(
                  shape: BoxShape.circle, width: 144, height: 144),
            ),
            constants.mediumVerticalSpace,
            SkeletonParagraph(
                style: SkeletonParagraphStyle(
                    lines: 1,
                    spacing: 6,
                    lineStyle: SkeletonLineStyle(
                      alignment: Alignment.center,
                      minLength: 80,
                      maxLength: 90,
                      height: 10,
                      borderRadius: BorderRadius.circular(8),
                    ))),
            constants.mediumVerticalSpace,
            const SkeletonLine(
              style: SkeletonLineStyle(height: 2),
            ),
            constants.mediumVerticalSpace,
            SkeletonAvatar(
              style: SkeletonAvatarStyle(
                width: double.infinity,
                minHeight: MediaQuery.of(context).size.height / 6,
                maxHeight: MediaQuery.of(context).size.height / 5,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
