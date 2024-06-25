

import 'package:flutter/material.dart';
  import 'screen/auth/login_screen.dart'; 
// global object for accessing device screen size
late Size mq ;
// import 'screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
 const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    mq=MediaQuery.of(context).size;
  
   return  MaterialApp(
debugShowCheckedModeBanner: false,
title: 'We Chat',

 theme: ThemeData(
  appBarTheme: const AppBarTheme(
     centerTitle: true,
        elevation: 1,
        titleTextStyle:   TextStyle(color:Colors.black , fontWeight:FontWeight.normal, fontSize: 19),  backgroundColor:Colors.white,
         
  )
 ),
   home: const loginscreen(),
   );
  }
}

