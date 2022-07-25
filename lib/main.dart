import 'package:dicoding/firebase/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:dicoding/parent_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    ));

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done){
            return const LoginScreen();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
