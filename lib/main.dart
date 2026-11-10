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
              SizedBox(height: 20,),
              Text('Muhammad Nathan Edyansyah',
              style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 20,),
              Text('1124160098',
              style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 20,),
              Text('Texnik Informatika',
              style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold
              ),
              ),
              Card(
                child: Column(
                  children: [
                    info(
                      icon: Icons.email,
                      label: 'gmail', 
                      value: 'Nathan@gmail.com'
                      ),
                      info(
                      icon: Icons.phone,
                      label: 'No.Telpon', 
                      value: '08455724782'
                      ),
                      info(
                      icon: Icons.facebook,
                      label: 'facebook', 
                      value: 'NathanGaming'
                      ),
                      info(
                      icon: Icons.g_mobiledata,
                      label: 'gitHub', 
                      value: 'NathanHihu.svg'
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('add')
          )
        );
      },
      tooltip: 'tambah',
      child: Icon(Icons.add),
      ),
    );
  }
}
class info extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const info({super.key,
  required this.icon,
  required this.label,
  required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}