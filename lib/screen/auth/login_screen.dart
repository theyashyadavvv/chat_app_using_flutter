import 'package:chatapp_firebase/main.dart';
import 'package:chatapp_firebase/screen/home_screen.dart';
import '../home_screen.dart';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  bool _isAnimate = false;
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), (){
      setState(() {
        _isAnimate=true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       automaticallyImplyLeading: false, // for removing leading icon

         title: const Text(' Welcome to WE Chat' ),
         iconTheme: const IconThemeData(color: Colors.black),
         actions: [
          IconButton(onPressed:(){}, icon: const Icon(Icons.search)),
          IconButton(onPressed:(){}, icon: const Icon(Icons.more_vert))
          
         ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: FloatingActionButton(onPressed: (){}, child: const Icon(Icons.add_comment_rounded),),
      ),
        body: Stack(children: [
        //app logo
        AnimatedPositioned(
            top: mq.height * .15,
            right:  _isAnimate ? mq.width * .25 : mq.width* .5,
            width: mq.width * .5,
           duration: const Duration(seconds: 1),
            child: Image.asset('images/speak.png')),

        //google login button
        Positioned(
            bottom: mq.height * .15,
            left: mq.width * .05,
            width: mq.width * .9,
            height: mq.height * .06,
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 223, 255, 187),
                    shape: const StadiumBorder(),
                    elevation: 1),
                onPressed: () {
                 Navigator.pushReplacement(context,MaterialPageRoute(builder: (_) => const HomeScreen()));
                },

                //google icon
                icon: Image.asset('images/google.png', height: mq.height * .03),

                //login with google label
                label: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      children: [
                        TextSpan(text: 'Login with '),
                        TextSpan(
                            text: 'Google',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ]),
                ))),
      ]),
    );
  }
}