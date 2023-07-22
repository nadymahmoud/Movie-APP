import 'dart:ui';

import 'package:flutter/cupertino.dart';
class Background extends StatelessWidget{
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
        final ScreanWidth = MediaQuery.of(context).size.width;
        final ScreanHeight = MediaQuery.of(context).size.height;
    return SizedBox(
  width: ScreanWidth,
  height: ScreanHeight,
  child: Stack(
    children: [
      Positioned(
        top: ScreanHeight * .2 ,
        left: ScreanWidth * .1 ,
        child: Container(
          height: 300 ,
          width: 300 ,
          decoration:const BoxDecoration(
            shape: BoxShape.circle ,
            color: Color.fromRGBO(86, 66, 212, 1)
          ) ,
         child: BackdropFilter(filter: ImageFilter.blur(
          sigmaX: 100,
          sigmaY: 100,
         ),
         child: const SizedBox(
          width: 300,
          height: 300,
          
         ),
         ),
        ),
      ),
       Positioned(
        top: ScreanHeight * .5 ,
        left: ScreanWidth * .4 ,
        child: Container(
          height: 300 ,
          width: 300 ,
          decoration:const BoxDecoration(
            shape: BoxShape.circle ,
            color: Color.fromRGBO(210, 32, 60, 1)
          ) ,
         child: BackdropFilter(filter: ImageFilter.blur(
          sigmaX: 100,
          sigmaY: 100,
         ),
         child: const SizedBox(
          width: 300,
          height: 300,
          
         ),
         ),
        ),
      ),
   
    ],
  )
    );
  }

}

