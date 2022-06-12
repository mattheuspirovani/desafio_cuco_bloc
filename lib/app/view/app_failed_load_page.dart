import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:constants/constants.dart' as constants;

import '../bloc/app_bloc.dart';

class AppFailedLoadPage extends StatelessWidget {
  const AppFailedLoadPage({Key? key}) : super(key: key);
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const AppFailedLoadPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Initialization error'),
      ),
      body: Column(
        children: [
          const Icon(Icons.wifi_off),
          constants.largeVerticalSpace,
          Text(
            'App failed loading.',
            style: Theme.of(context).textTheme.headline2,
          ),
          constants.mediumVerticalSpace,
          BlocBuilder<AppBloc, AppState>(
            builder: (context, state) {
              return ElevatedButton(
                  onPressed: () {
                    context.read<AppBloc>().add(AppCheckConnectivity());
                  },
                  child: const Text('Check internet connection'));
            },
          )
        ],
      ),
    );
  }
}
