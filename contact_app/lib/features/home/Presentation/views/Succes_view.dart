import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Succes3 extends StatelessWidget {
  const Succes3({Key? key}) : super(key: key);

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
      body: SingleChildScrollView( // <--- AQUI VA EL CAMBIO CLAVE
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              contactoItem(
                nombre: 'Pablo Velaquez',
                telefono: '+52 456 781 1549',
                email: 'velasquez88@gmail.com',
                imagen: 'https://st4.depositphotos.com/10638838/37791/v/450/depositphotos_377910952-stock-illustration-man-avatar-icon-flat-color.jpg',
              ),
              contactoItem(
                nombre: 'Ana Torres',
                telefono: '+52 456 852 1324',
                email: 'anatorres54@gmail.com',
                imagen: 'https://cdn-icons-png.flaticon.com/512/3362/3362093.png',
              ),
              contactoItem(
                nombre: 'Miguel Herrera',
                telefono: '+52 123 888 6987',
                email: 'miguelitoher@gmail.com',
                imagen: 'https://st4.depositphotos.com/10638838/37791/v/450/depositphotos_377910952-stock-illustration-man-avatar-icon-flat-color.jpg',
              ),
              contactoItem(
                nombre: 'Cesar Paolo',
                telefono: '+52 546 852 9999',
                email: 'cesarpaolos@gmail.com',
                imagen: 'https://st4.depositphotos.com/10638838/37791/v/450/depositphotos_377910952-stock-illustration-man-avatar-icon-flat-color.jpg',
              ),
              contactoItem(
                nombre: 'Laura Martinez',
                telefono: '+52 321 654 7777',
                email: 'laruramartinez@gmail.com',
                imagen: 'https://cdn-icons-png.flaticon.com/512/3362/3362093.png',
              ),
            ],
          ),
        ),
      ),
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
