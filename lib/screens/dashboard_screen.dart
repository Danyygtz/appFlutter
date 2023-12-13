import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffea80fc),
      appBar: AppBar(title: const Text('Flutter Topicos'),),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/'),
              ),
              accountName: Text('Martina Daniela <3'),
              accountEmail: Text('19030013@itcelaya.edu.mx'),
            ),
            ListTile(
              title: const Text('Conversor'),
              subtitle: const Text('Temperatura'),
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.thermostat),
              onTap: (){
                Navigator.pushNamed(context, "/temp");
              },
            ),
            ListTile(
              title: const Text('Intenciones'),
              subtitle: const Text('Miscelanea'),
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.phone_android),
              onTap: (){
                Navigator.pushNamed(context, "/int");
              },
            ),
            ListTile(
              title: const Text('Movie APP'),
              subtitle: const Text('Lista de peliculas'),
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.movie),
              onTap: (){
                Navigator.pushNamed(context, "/movie");
              },
            ),
            ListTile(
              title: const Text('Login'),
              subtitle: const Text('Practica 6: Login Flutter'),
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.app_shortcut),
              onTap: (){
                Navigator.pushNamed(context, "/login");
              },
            ),
             ListTile(
              title: const Text('FruityApp'),
              subtitle: const Text('Practica 7: UI Challenge'),
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.apple),
              onTap: (){
                Navigator.pushNamed(context, "/fruity");
              },
            ),
            ListTile(
              title: const Text('OnBoarding'),
              subtitle: const Text('Practica 8: Onboarding Screen'),
              trailing: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.amp_stories),
              onTap: (){
                Navigator.pushNamed(context, "/onboard");
              },
            )
          ],
        ),
      ),
    );
  }
}