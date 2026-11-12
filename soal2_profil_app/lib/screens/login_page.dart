import 'package:flutter/material.dart';
import 'package:soal2_profil_app/screens/about_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Mahasiswa',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Padding(padding: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.school,
              size: 90,
              color: Colors.brown,
              ),
              SizedBox(height: 20,),
              Text(
                'WELCOME!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 10,),
              Text('Silahkan login untuk melanjutkan',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
              ),
              SizedBox(height: 35,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Masukan Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return 'Email gaboleh kosong mas';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Masukan Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return 'Password gaboleh kosong mas';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(onPressed: () {
                  if (_formKey.currentState!.validate()){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilePage(),
                        ) 
                      );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text('Login',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                ),
                ),
              )
          ],
        ),
        ),
      ),
    ),
    );
  }
}