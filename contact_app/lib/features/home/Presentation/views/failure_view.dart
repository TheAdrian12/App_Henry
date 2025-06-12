import 'package:contact_app/features/home/Presentation/blocs/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Errorr extends StatelessWidget {
  const Errorr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.sentiment_dissatisfied,
                size: 100,
                color: Colors.blue,
              ),
              SizedBox(height: 16),
              Text(
                'Se ha producido un error',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Ha ocurrido un error inesperado',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              ElevatedButton(
              onPressed: () { 
                final homeBloc = BlocProvider.of<HomeBloc>(context);
                  homeBloc.add(HomeSearchPressed());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: Text('Reintentar'),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
