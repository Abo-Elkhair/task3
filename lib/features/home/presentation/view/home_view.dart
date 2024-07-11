import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task3/features/home/presentation/view_model/home_cubit.dart';
import 'package:task3/features/home/presentation/view_model/home_states.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getHomeData(),
      child: BlocBuilder<HomeCubit, HomeStates>(
        builder: (context, state) {
          return const Scaffold();
        },
      ),
    );
  }
}
