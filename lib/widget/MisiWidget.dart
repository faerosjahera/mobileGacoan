// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MisiWidget extends StatelessWidget{
  const MisiWidget({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [

              //single item
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: 380,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                      )
                    ]),
                    child: Row(
                      children: [
                        InkWell(
                           onTap: (){
                            Navigator.pushNamed(context, 'itemPage');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Image.asset("assets/udang.png",
                            height: 120,
                            width: 150,
                            ),
                          ),
                        ),
                         SizedBox(
                          width: 190,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                              Text("Free Dimsum",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Free Dimsum for kwedaa",
                              style: TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.bold,
                                ),
                              ),
                            
                              RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 18,
                                itemPadding: EdgeInsets.symmetric(horizontal: 4), 
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.red,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                            
                                Text("Rp.0",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                      const Padding(padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                                size: 25,
                              ),
                              Icon(
                                CupertinoIcons.cart,
                                color: Colors.red,
                                size: 25,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: 380,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                      )
                    ]),
                    child: Row(
                      children: [
                        InkWell(
                           onTap: (){
                            Navigator.pushNamed(context, 'itemPage');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Image.asset("assets/udang.png",
                            height: 120,
                            width: 150,
                            ),
                          ),
                        ),
                         SizedBox(
                          width: 190,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                              Text("Free Dimsum",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Free Dimsum for kwedaa",
                              style: TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.bold,
                                ),
                              ),
                            
                              RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 18,
                                itemPadding: EdgeInsets.symmetric(horizontal: 4),
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star,
                                  color: Colors.red,
                                  ),
                                onRatingUpdate: (rating) {},
                                ),
                            
                                Text("Rp.0",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                      const Padding(padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                                size: 25,
                              ),
                              Icon(
                                CupertinoIcons.cart,
                                color: Colors.red,
                                size: 25,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: 380,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                      )
                    ]),
                    child: Row(
                      children: [
                        InkWell(
                           onTap: (){
                            Navigator.pushNamed(context, 'itemPage');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Image.asset("assets/udang.png",
                            height: 120,
                            width: 150,
                            ),
                          ),
                        ),
                         SizedBox(
                          width: 190,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                              Text("Free Dimsum",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Free Dimsum for kwedaa",
                              style: TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.bold,
                                ),
                              ),
                            
                              RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 18,
                                itemPadding: EdgeInsets.symmetric(horizontal: 4),
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star,
                                  color: Colors.red,
                                  ),
                                onRatingUpdate: (rating) {},
                                ),
                            
                                Text("Rp.0",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                      const Padding(padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                                size: 25,
                              ),
                              Icon(
                                CupertinoIcons.cart,
                                color: Colors.red,
                                size: 25,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                ),
              ),

              


            ],
          ),
      ),
    );
  }
}