import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Saya'),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text('Keahlian',
          style: 
          TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 15,),

          Card(
            child: ListTile(
              leading: Icon(
                Icons.design_services,
                color: Colors.brown,
              ),
              title: Text('Desain'),
              subtitle: Text('Memiliki ketertarikan dalam dunia design.'
              ),
            ),
          ),
          SizedBox(height: 20,),
          Text('Hobi',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 15,),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.sports_esports,
                color: Colors.brown,
              ),
              title: Text('Bermain Game'),
              subtitle: Text('Mengisi waktu luang dengan main game.',
              ),
            ),
          ),
           Card(
            child: ListTile(
              leading: Icon(
                Icons.sports_soccer,
                color: Colors.brown,
              ),
              title: Text('Bermain Bola'),
              subtitle: Text('Menyukai olahraga sepak bola.',
              ),
            ),
          ),
           Card(
            child: ListTile(
              leading: Icon(
                Icons.menu_book,
                color: Colors.brown,
              ),
              title: Text('Belajar Hal Baru'),
              subtitle: Text('Senang mempelajari dan mencari pengalaman baru.',
              ),
            ),
          ),
        SizedBox(height: 30,),
        Text('Riwayat Pendidikan',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
        SizedBox(height: 15,),
        Card(
          child: ListTile(
            leading: 
            Icon(Icons.school,
            color: Colors.brown,
            ),
            title: Text('Sekolah Dasar'),
            subtitle: Text('SD Harapan Bangsa'),
          ),
        ),
         Card(
          child: ListTile(
            leading: 
            Icon(Icons.school,
            color: Colors.brown,
            ),
            title: Text('Sekolah Menengah Pertama'),
            subtitle: Text('Mts Nurul Hikmah'),
          ),
        ),
         Card(
          child: ListTile(
            leading: 
            Icon(Icons.school,
            color: Colors.brown,
            ),
            title: Text('Sekolah Menengah Kejuruan'),
            subtitle: Text('SMK Nurul Hikmah'),
          ),
        ),
         Card(
          child: ListTile(
            leading: 
            Icon(Icons.account_balance,
            color: Colors.brown,
            ),
            title: Text('Perguruan Tinggi'),
            subtitle: Text('Institut Teknologi Dan Bisnis Bina Sarana Global'),
          ),
        ),
        ],
      ),
    );
  }
}