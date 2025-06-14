import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../data/models/user.dart';

class Succes3 extends StatelessWidget {
   final List<User> usuarios;

   const Succes3({Key? key, required this.usuarios}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contactos',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: usuarios.length,
      itemBuilder: (context, index){
        final user = usuarios[index];
        return contactoItem(
          nombre: user.nombre, 
          telefono: user.numero, 
          email: user.email, 
          imagen: user.imagen);
      })
    );
  }

  Widget contactoItem({
    required String nombre,
    required String telefono,
    required String email,
    required String imagen,
  }) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(imagen),
            ),
            const SizedBox(width: 60),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nombre,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(telefono, style: TextStyle(fontSize: 13)),
                Text(email, style: TextStyle(fontSize: 13)),
              ],
            ),
            Spacer(),
            Icon(Icons.phone),
            SizedBox(width: 15),
            Icon(Icons.email),
          ],
        ),
        SizedBox(height: 5),
        Divider(thickness: 1, color: Colors.blue),
        SizedBox(height: 5),
      ],
    );
  }
}
