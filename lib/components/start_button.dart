import "package:flutter/material.dart";

class StartedButton extends StatelessWidget {

  final void Function()? onTap;
  const StartedButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
                    onTap: onTap,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      width: MediaQuery.of(context).size.width,
                      child: const Center(
                        child: Text("Get Started",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          
                          color: Colors.white,
                          fontSize: 24)),
                      ),
                    ),
                  ),
    );
  }
}