import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      const Padding(
        padding: EdgeInsets.only(left: 30, top: 40),
        child: Text(
          'Name : ورق عنب',
          style: TextStyle(fontSize: 32),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 30, top: 10),
        child: Text(
          'id : 3030',
          style: TextStyle(fontSize: 32),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 30, top: 10),
        child: Text(
          'Email : momo@gmail.com',
          style: TextStyle(fontSize: 28),
        ),
      ),
      Image.asset('images/WhatsApp Image 2023-05-18 at 14.14.04.jpg'),
      const SizedBox(
        height: 10,
      ),
      Image.asset('images/WhatsApp Image 2023-05-18 at 14.26.11.jpg'),
      const SizedBox(
        height: 10,
      ),
      Image.asset('images/WhatsApp Image 2023-05-18 at 14.44.38.jpg'),
      const SizedBox(
        height: 10,
      ),
      Image.asset('images/WhatsApp Image 2023-05-18 at 14.29.01.jpg'),
      const SizedBox(
        height: 10,
      ),
      Image.asset('images/WhatsApp Image 2023-05-18 at 14.29.43.jpg'),
      const SizedBox(
        height: 10,
      ),
    ]));
  }
}
