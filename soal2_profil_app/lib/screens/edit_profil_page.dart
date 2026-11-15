import 'package:flutter/material.dart';
import 'package:soal2_profil_app/models/profile.dart';

class EditProfilPage extends StatefulWidget {
  final Profile profile;

  const EditProfilPage({super.key,
  required this.profile,
  });

  @override
  State<EditProfilPage> createState() => _EditProfilPageState();
}
  class _EditProfilPageState extends State<EditProfilPage> {
    final _formkey = GlobalKey<FormState>();
    final TextEditingController namaController =
    TextEditingController();
    final TextEditingController emailController =
    TextEditingController();
    final TextEditingController nohpController =
    TextEditingController();

  @override
  void initState(){
    super.initState();

    namaController.text = widget.profile.nama;
    emailController.text = widget.profile.email;
    nohpController.text = widget.profile.nohp;
  }
   @override
  void dispose(){
    namaController.dispose();
    emailController.dispose();
    nohpController.dispose();

    super.dispose();
  }
  void simpanProfile(){
    if (_formkey.currentState!.validate()){
      Profile profileBaru = Profile(
        nama: namaController.text, 
        nim: widget.profile.nim, 
        prodi: widget.profile.prodi, 
        Kelas: widget.profile.Kelas, 
        bio: widget.profile.bio, 
        email: emailController.text, 
        nohp: nohpController.text, 
        github: widget.profile.github
        );
        Navigator.pop(context, profileBaru);
    }
  }
@override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profil'),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: 
        EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nama lengkap',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 8,),
              TextFormField(
                controller: namaController,
                decoration: InputDecoration(
                  hintText: 'Masukan nama lengkap',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return 'Nama gaboleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20,),
              Text('Email',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 8,),

              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Masukan email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email gaboleh kosong';
                  }
                  if (!RegExp(
                    r'^[^@\s]+@[^@\s]+\.[^@\s]+$'
                  ).hasMatch(value)) {
                    return 'Format email tidak valid';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20,),
              Text('Nomor HP',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 8,),
              TextFormField(
                controller: nohpController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Masukan nomor HP',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nomor HP gaboleh kosong';
                  }
                  if (!RegExp(r'^\d{10,13}$').hasMatch(value)){
                    return 'Nomor HP harus 10-13 angka';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: simpanProfile,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.all(15),
                  ),
                  child: Text('Simpan'),
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