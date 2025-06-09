import 'package:flutter/material.dart';

class carga extends StatelessWidget {
  const carga({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
            ),
            Text('Cargando Contactos...')
          ],
        ),
      ),
    );
  }
}

