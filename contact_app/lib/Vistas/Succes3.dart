import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Succes3 extends StatelessWidget {
  const Succes3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contacto')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                'https://i.pravatar.cc/150?img=3', 
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Pablo Velaquez',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 8),
                Text('+52 456 781 1549'),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 8),
                Text('velasquez88@gmail.com'),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(FontAwesomeIcons.facebook),
                  iconSize: 45,
                  onPressed: () {
                  },
                ),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.whatsapp),
                   iconSize: 50,
                  onPressed: () {
                  },
                ),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.instagram),
                   iconSize: 45,
                  onPressed: () {
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}