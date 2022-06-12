import 'package:desafio_cuco_bloc/app/bloc/app_bloc.dart';
import 'package:desafio_cuco_bloc/friend/friend.dart';
import 'package:desafio_cuco_bloc/home/bloc/home_bloc.dart';
import 'package:desafio_cuco_bloc/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        if (state is AppOffline) {
          showTopSnackBar(
            context,
            const CustomSnackBar.error(
              message: "No Internet connection.",
            ),
          );
        } else if (state is AppOnline) {
          showTopSnackBar(
            context,
            const CustomSnackBar.success(
              message: "You are online.",
            ),
          );
        }
      },
      child: BlocProvider(
        create: (context) => HomeBloc(),
        child: const HomeView(),
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, HomeState>(
      selector: (state) => state,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Random Friends'),
          ),
          body: state.currentIndex == 0
              ? const ProfilePage()
              : const FriendPage(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.currentIndex,
            onTap: (index) =>
                context.read<HomeBloc>().add(HomeTabSelection(index)),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_search), label: 'Friends'),
            ],
          ),
        );
      },
    );
  }
}
