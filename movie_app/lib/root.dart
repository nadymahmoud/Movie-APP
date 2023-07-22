import 'package:flutter/material.dart';

class Root extends StatelessWidget{
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    final ScreanWidth = MediaQuery.of(context).size.width;
        final ScreanHeight = MediaQuery.of(context).size.height;
  return const Scaffold(
    body: Center(child: Text("Root", style: TextStyle(color: Colors.white),),),
  );
  }
}