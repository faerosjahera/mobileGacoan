// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class PopularWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
      child: Row(
        children: [

          Padding(padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Container(
            width: 170,
            height: 225,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
               offset: const Offset(0, 3),)
              ]),
              child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, 'gacoanPage');
                    },
                    child: Container(
                      child: Image.asset("assets/miegacoan.png",
                      height: 130,
                      ),
                    ),
                  ),
                  const Text('Mie Gacoan lvl 3', 
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  const SizedBox(height: 4),
                  const Text('Mie Gacoan lvl 3', 
                  style: TextStyle(
                    fontSize: 15, 
                  ),
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rp.13.786', 
                      style: TextStyle(
                      fontSize: 17,
                      color: Colors.red,
                      fontWeight: FontWeight.bold 
                      ),
                    ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                        size: 25,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),

          Padding(padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Container(
            width: 170,
            height: 225,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
               offset: const Offset(0, 3),)
              ]),
              child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, 'hompimpahPage');
                    },
                    child: Container(
                      child: Image.asset("assets/miehompimpah.png",
                      height: 130,
                      ),
                    ),
                  ),
                  const Text('Mie Hompimpah', 
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  const SizedBox(height: 4),
                  const Text('Mie Hompimpah', 
                  style: TextStyle(
                    fontSize: 15, 
                  ),
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rp.13.786', 
                      style: TextStyle(
                      fontSize: 17,
                      color: Colors.red,
                      fontWeight: FontWeight.bold 
                      ),
                    ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                        size: 25,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),

        Padding(padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Container(
            width: 170,
            height: 225,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
               offset: const Offset(0, 3),)
              ]),
              child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, 'suitPage');
                    },
                    child: Container(
                      child: Image.asset("assets/miesuit.png",
                      height: 130,
                      ),
                    ),
                  ),
                  const Text('Mie Suit ', 
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  const SizedBox(height: 4),
                  const Text('Mie Suit', 
                  style: TextStyle(
                    fontSize: 15, 
                  ),
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Rp.13.786', 
                      style: TextStyle(
                      fontSize: 17,
                      color: Colors.red,
                      fontWeight: FontWeight.bold 
                      ),
                    ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                        size: 25,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),

        

      ],
      ),
      ),
    ); 
    }
  }