import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:task3/core/network/dio_service.dart';
import 'package:task3/core/network/endpoints.dart';
import 'package:task3/features/home/data/home_model/home_model/home_model.dart';
import 'package:task3/features/home/presentation/view_model/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());
  HomeModel? homeModel;
  Future<void> getHomeData() async {
    emit(HomeLoadingState());
    DioService.getData(path: EndPoints.home).then((value) {
      homeModel = HomeModel.fromJson(value.data);
      print(homeModel!.data?.userTypes?[0].name);
      emit(HomeSuccessState());
    }).catchError((error) {
      emit(HomeErrorState(error: error.toString()));
    });
  }
}
