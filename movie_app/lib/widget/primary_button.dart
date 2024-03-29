import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class PramiryBotton extends StatelessWidget{
  PramiryBotton({ 
Key? key ,
required this.title,
required this.width,
required this.height,

  });
  String title ;
  double width ;
  double height ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          colors:[ Color.fromRGBO(210, 32, 60, 1) ,
        Color.fromRGBO(86, 66, 212, 1) ,]
        )
      ),
      child: Text(title , 
      style: GoogleFonts.nunito(
        color: Colors.white , 
        fontWeight: FontWeight.w700 ,
      ),
      ),
    );
  }
}