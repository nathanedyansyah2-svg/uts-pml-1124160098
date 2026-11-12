import 'package:flutter/material.dart';
import 'package:soal2_profil_app/screens/login_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Mahasiswa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)
      ),
      darkTheme: ThemeData(useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.red,
      brightness: Brightness.dark)
      ),
      themeMode: ThemeMode.system,
      home: LoginPage(),
    );
  }
}