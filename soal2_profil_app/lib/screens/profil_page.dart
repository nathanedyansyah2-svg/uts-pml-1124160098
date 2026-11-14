import 'package:flutter/material.dart';
import 'package:soal2_profil_app/models/profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final Profile profile =Profile(
    nama: 'Muhammad Nathan Edyansyah', 
    nim: '1124160098', 
    prodi: 'Teknik Informatika', 
    Kelas: 'TI24SE1', 
    bio: 'Saya adalah mahasiswa teknik informatika yang memiliki ketertarikan dalam bidang teknologi, pemrograman, dan pengembangan aplikasi mobile. ', 
    email: 'nathanedyansyah2@gmail.com', 
    nohp: '085716976355', 
    github: 'nathanedyansyah2-svg'
    );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: 
        EdgeInsets.all(20),
        child: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
                child: Icon(
                Icons.person,
                size: 60,
              ),
            ),
            SizedBox(height: 20,),
            Text(
              profile.nama,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8,),
            Text(
              profile.nim,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            ),
            SizedBox(height: 8,),
            Text(
              profile.prodi,
            style: TextStyle(
              fontSize: 15,
            ),
            ),
            SizedBox(height: 8,),
             Text('Kelas : ${profile.Kelas}',
            style: TextStyle(
              fontSize: 15,
            ),
            ),
            SizedBox(height: 20,),
            Card(
              child: Padding(padding: 
              EdgeInsetsGeometry.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text('Tentang Saya',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                 Column(
                  children: [
                    Center(
                      child: Text(
                              profile.bio,
                              style: 
                              TextStyle(
                                fontSize: 14,
                              ),
                      ),
                    )
                  ],
                 ),
                  SizedBox(height: 30,),
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Kontak Saya',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.email),
                          title: Text('Email'),
                          subtitle: Text(profile.email),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('Nomor HP'),
                          subtitle: Text(profile.nohp),
                        ),
                        ListTile(
                          leading: Icon(Icons.code),
                          title: Text('GitHub'),
                          subtitle: Text(profile.github),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ),
            ),
          ],
          ),
        ),
        ),
      ),
    );
  }
}
