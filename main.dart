

import 'package:authenticate/custom/TodoCard.dart';
import 'package:authenticate/pages/AddToDo.dart';
import 'package:authenticate/pages/HomePage.dart';
import 'package:authenticate/pages/LoginPage.dart';
import 'package:authenticate/pages/SignUpPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:shared_preferences/shared_preferences.dart';

void main()  async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({ super.key });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;


void signup() async {
  try{
    await firebaseAuth.createUserWithEmailAndPassword(email: "nehakaushik1000@gmail.com", password: "123456");
  }
  catch(e) {
    print(e);
  }

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      HomePage()
    );

  }
}


 