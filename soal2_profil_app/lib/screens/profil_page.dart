import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
              'Muhammad Nathan Edyansyah',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8,),
            Text('1124160098',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            ),
            SizedBox(height: 8,),
            Text('Teknik Informatika',
            style: TextStyle(
              fontSize: 15,
            ),
            ),
            SizedBox(height: 8,),
             Text('Kelas : TI24SE1',
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
                              'Saya adalah mahasiswa Teknik Informatika '
                              'yang memiliki ketertarikan dalam bidang '
                              'teknologi, pemrograman, dan pengembangan '
                              'aplikasi mobile',
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
                          subtitle: Text('nathanedyansyah2@gmail.com'),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('Nomor HP'),
                          subtitle: Text('085716976355'),
                        ),
                        ListTile(
                          leading: Icon(Icons.code),
                          title: Text('GitHub'),
                          subtitle: Text('nathanedyansyah2-svg'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              ),
            )
          ],
          ),
        ),
        ),
      )
    );
  }
}
