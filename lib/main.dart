import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Nathan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue
      )
      ),
      darkTheme: ThemeData(useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown)
      ),
      themeMode: ThemeMode.dark,
      home: ProfilPage(),
    );
  }
}
class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Mahasiswa'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      centerTitle: true,
      actions: [
        IconButton(onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('mencari')
            ),
          );
        },
        tooltip: 'cari',
        icon: Icon(Icons.search),
        )
      ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsetsGeometry.all(20
        ),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 25,
                child: Icon(Icons.person),
              ),
              SizedBox(height: 10,),
              Text('Muhammad Nathan Edyansyah',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 10,),
              Text('1124160098',),
              Text('Teknik Informatika')
            ],
          ),
        ),
        ),
      ),
    );
  }
}