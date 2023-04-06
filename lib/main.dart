import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeActivity());
  }
}

class HomeActivity extends StatefulWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  @override
  MySnackBar(message, context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventory App'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            //Two types children 1. Drawer_Header 2. Drawer_Item
            DrawerHeader(
              padding: EdgeInsets.all(0),
              //child: Text('Koushik Roy')),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                accountName: Text(
                  'Koushik Roy',
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  'rkoushik755@gmail.com',
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network(
                    'https://miro.medium.com/v2/resize:fit:320/0*ObJbOfJnx4QIPUq9.png'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                MySnackBar('Home', context);
              },
            ),
            ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('Contact'),
                onTap: () {
                  MySnackBar('Contact', context);
                }),
            ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onTap: () {
                  MySnackBar('Profile', context);
                }),
            ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                onTap: () {
                  MySnackBar('Email', context);
                }),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone'),
                onTap: () {
                  MySnackBar('Phone', context);
                }),
          ],
        ),
      ),
    );
  }
}
