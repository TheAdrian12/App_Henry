
import 'package:contact_app/features/home/Presentation/views/carga_view.dart';
import 'package:contact_app/features/home/Presentation/views/failure_view.dart';
import 'package:contact_app/features/home/Presentation/views/Succes_view.dart';
import 'package:contact_app/features/home/Presentation/views/inicio_view.dart';
import 'package:flutter/material.dart';

import 'features/data/models/user.dart';
import 'features/home/Presentation/blocs/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'contact_app',
        home: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeLoadSuccess) {
              List<User> usuarios = state.usuarios;
              return Succes3(usuarios:usuarios);
            } else if (state is HomeLoadInProgress) {
              return Carga();
            } else if (state is HomeLoadFailure) {
              return Errorr();
            }
            return Inicio();
          },
        ),
      ),
    );
  }
}