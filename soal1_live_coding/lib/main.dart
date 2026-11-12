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
              Text('Teknik Informatika'),
              SizedBox(height: 20,),
              Card(
                child: Column(
                  children: [
                    infotile(
                      icon: Icons.email, 
                      label: 'email', 
                      value: 'nathan@gmail.com'
                      ),
                      infotile(
                      icon: Icons.phone, 
                      label: 'No.Telpon', 
                      value: '08978576373'
                      ),
                      infotile(
                      icon: Icons.home, 
                      label: 'kelas', 
                      value: 'TI24SE1'
                      ),
                      infotile(
                      icon: Icons.g_mobiledata, 
                      label: 'gitHub', 
                      value: 'nathanhihu-svg'
                      ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text('HOBI',
              style:TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 20,),
              Card(
                child: Column(
                  children: [
                    infotile(
                      icon: Icons.self_improvement_sharp, 
                      label: 'semedi', 
                      value: 'Tidur'
                      ),
                      infotile(
                      icon: Icons.gamepad, 
                      label: 'game', 
                      value: 'MobileLegends'
                      ),
                      infotile(
                      icon: Icons.book, 
                      label: 'book', 
                      value: 'baca buku'
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('TERIMAKASIH SUDAH MELIHAT PROFIL SAYA')
          )
        );
      },
      tooltip: 'klik',
      child: Icon(Icons.notification_add),
      ),
    );
  }
}
class infotile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const infotile({super.key,
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