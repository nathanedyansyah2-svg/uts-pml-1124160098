import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nathan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue,
      ),
      ),
      darkTheme: ThemeData(useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.black)
      ),
      home: Profil(),
      themeMode: ThemeMode.dark,
    );
  }
}
class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfilMahasiswa'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Searching')
              ),
            );
          },
          tooltip: 'cari',
          icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsetsGeometry.all(20),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 25,
                child: Icon(Icons.person),
              ),
              Text('Muhammad Nathan Edyansyah',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight(20),
              ),
              ),
            ],
          ),
        ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: onPressed),
    );
  }
}