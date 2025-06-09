import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Succes3 extends StatelessWidget {
  const Succes3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contactos', 
      style: TextStyle(color: Colors.white, fontSize: 25),), 
      backgroundColor: Colors.blue, centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(children: [
              const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://st4.depositphotos.com/10638838/37791/v/450/depositphotos_377910952-stock-illustration-man-avatar-icon-flat-color.jpg', 
              ),
            ),
            const SizedBox(width: 60),
            Column(
              children: [
              Text('Pablo Velaquez',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            
              Text('+52 456 781 1549', style: TextStyle(fontSize: 13)),
              Text('velasquez88@gmail.com', style: TextStyle(fontSize: 13)),
              ],
            ),
            SizedBox(width: 70),
            Icon(Icons.phone),
            SizedBox(width: 15),
            Icon(Icons.email),
            ],),
            SizedBox(height: 5),
            Divider(thickness: 1, color: Colors.blue),
            SizedBox(height: 5),

            Row(children: [
              const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/3362/3362093.png', 
              ),
            ),
            const SizedBox(width: 60),
            Column(
              children: [
              Text('Ana Torres',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            
              Text('+52 456 852 1324', style: TextStyle(fontSize: 13)),
              Text('anatorres54@gmail.com', style: TextStyle(fontSize: 13)),
              ],
            ),
            SizedBox(width: 70),
            Icon(Icons.phone),
            SizedBox(width: 15),
            Icon(Icons.email),
            ],),
            SizedBox(height: 5),
            Divider(thickness: 1, color: Colors.blue),
            SizedBox(height: 5),

             Row(children: [
              const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://st4.depositphotos.com/10638838/37791/v/450/depositphotos_377910952-stock-illustration-man-avatar-icon-flat-color.jpg', 
              ),
            ),
            const SizedBox(width: 60),
            Column(
              children: [
              Text('Miguel Herrera',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            
              Text('+52 123 888 6987', style: TextStyle(fontSize: 13)),
              Text('miguelitoherrera@gmail.com', style: TextStyle(fontSize: 13)),
              ],
            ),
            SizedBox(width: 70),
            Icon(Icons.phone),
            SizedBox(width: 15),
            Icon(Icons.email),
            ],),
            SizedBox(height: 5),
            Divider(thickness: 1, color: Colors.blue),
            SizedBox(height: 5),

             Row(children: [
              const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://st4.depositphotos.com/10638838/37791/v/450/depositphotos_377910952-stock-illustration-man-avatar-icon-flat-color.jpg', 
              ),
            ),
            const SizedBox(width: 60),
            Column(
              children: [
              Text('Cesar Paolo',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            
              Text('+52 546 852 9999', style: TextStyle(fontSize: 13)),
              Text('cesarpaolos@gmail.com', style: TextStyle(fontSize: 13)),
              ],
            ),
            SizedBox(width: 70),
            Icon(Icons.phone),
            SizedBox(width: 15),
            Icon(Icons.email),
            ],),
            SizedBox(height: 5),
            Divider(thickness: 1, color: Colors.blue),
            SizedBox(height: 5),

             Row(children: [
              const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/3362/3362093.png', 
              ),
            ),
            const SizedBox(width: 60),
            Column(
              children: [
              Text('Laura Martinez',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            
              Text('+52 321 654 7777', style: TextStyle(fontSize: 13)),
              Text('laruramartinez@gmail.com', style: TextStyle(fontSize: 13)),
              ],
            ),
            SizedBox(width: 70),
            Icon(Icons.phone),
            SizedBox(width: 15),
            Icon(Icons.email),
            ],),
            SizedBox(height: 5),
            Divider(thickness: 1, color: Colors.blue),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}