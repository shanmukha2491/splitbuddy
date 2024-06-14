import 'package:flutter/material.dart';
import 'package:splitbuddy/components/start_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("./assets/images/intropage.jpeg"))),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                  const SizedBox(height: 60,),
                  const Text(
                        "S P L I T   B U D D Y",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 24),
                      ),
                  const SizedBox(height: 30,),
                  Text(
                  "if you can count money, work harder",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                
                ],),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: StartedButton(onTap: (){
                  Navigator.pushNamed(context, "/homePage");
                }),
              )
            ],


          )
             
        )
      )
    );
  }
}
