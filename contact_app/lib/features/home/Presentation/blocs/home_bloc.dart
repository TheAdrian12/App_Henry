import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

import '../../../data/models/user.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeSearchPressed>((event, emit) async{
      emit(HomeLoadInProgress());
      final url = Uri.parse('https://run.mocky.io/v3/1533b437-eb61-4eee-9f42-e80f27c76b22');
      final response = await http.get(url);
      if (response.statusCode == 200){
        List<dynamic> data = jsonDecode(response.body);
        List<User> usuarios = data.map((item) => User.fromJson(item)).toList();
        emit(HomeLoadSuccess(usuarios));
      }else{
        emit(HomeLoadFailure());
      }

    });
  }
}