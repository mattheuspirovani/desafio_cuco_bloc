import 'package:constants/constants.dart' as constants;
import 'package:flutter/material.dart';

class EmptyStateWidget extends StatelessWidget {
  final VoidCallback onRetryPressed;
  const EmptyStateWidget({Key? key, required this.onRetryPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.sentiment_dissatisfied,
                    size: 84,
                  ),
                  constants.largeVerticalSpace,
                  Text('Nothing to display'),
                ],
              ),
            ),
          ),
          ElevatedButton(
              onPressed: onRetryPressed, child: const Text('Try again'))
        ],
      ),
    );
  }
}
