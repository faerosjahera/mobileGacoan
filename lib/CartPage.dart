import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gacoan/widget/AppBarWidget.dart';
import 'package:gacoan/widget/CartBottomNavbar.dart';
import 'package:gacoan/widget/DrawerWidget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppBarWidget(),
                  const Padding(padding: EdgeInsets.only(
                    top: 20,
                    left: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    "Order List",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                 ),

                 //item
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Container(
                      width: 380,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [ 
                          BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                          ),
                        ],),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'miesuit.png',
                                height: 80,
                                width: 150,
                              ),
                            ),
                            Container(
                              width: 190,
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Mie Suit',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                   ),

                                   Text(
                                    'Deskripsi Mie Suit',
                                    style: TextStyle(
                                      fontSize: 15,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                   ),

                                   Text(
                                    'Rp.14.378',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                   ),

                              ],),
                            ),
                            Padding(padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '2',
                                    style:TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                  ),
                                    Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.white,),
                                ],
                              ),
                            ),)
                          ],
                        ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Container(
                      width: 380,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [ 
                          BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                          ),
                        ],),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'miegacoan.png',
                                height: 80,
                                width: 150,
                              ),
                            ),
                            Container(
                              width: 190,
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Mie Gacoan',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                   ),

                                   Text(
                                    'Deskripsi Mie Gacoan',
                                    style: TextStyle(
                                      fontSize: 15,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                   ),

                                   Text(
                                    'Rp.14.378',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                   ),

                              ],),
                            ),
                            Padding(padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '2',
                                    style:TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                  ),
                                    Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.white,),
                                ],
                              ),
                            ),)
                          ],
                        ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Container(
                      width: 380,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [ 
                          BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                          ),
                        ],),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'miehompimpah.png',
                                height: 80,
                                width: 150,
                              ),
                            ),
                            Container(
                              width: 190,
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Mie Hompimpah',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                   ),

                                   Text(
                                    'Deskripsi Mie Hompimpah',
                                    style: TextStyle(
                                      fontSize: 15,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                   ),

                                   Text(
                                    'Rp.14.378',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                   ),

                              ],),
                            ),
                            Padding(padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '2',
                                    style:TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                  ),
                                    Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.white,),
                                ],
                              ),
                            ),)
                          ],
                        ),
                    ),
                  ),

                //TOTAL HARGA
                Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Column(
                    children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Items : ',
                        style: TextStyle(fontSize: 20),
                        ),
                        Text('10',
                        style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                   ),
                   
                  Divider(
                    color: Colors.black,
                   ),

                   Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sub-Total : ',
                        style: TextStyle(fontSize: 20),
                        ),
                        Text('Rp.50.000',
                        style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                   ),

                    Divider(
                      color: Colors.black54,
                    ),

                   Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Ongkir : ',
                        style: TextStyle(fontSize: 20),
                        ),
                        Text('Rp.10.000',
                        style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                   ),

                   Divider(
                    color: Colors.black45,
                   ),

                   Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total : ',
                        style: TextStyle(fontSize: 20),
                        ),
                        Text('Rp.60.000',
                        style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                   ),

                   Divider(
                    color: Colors.black38,
                   ),

                     ],
                    ),
                   ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),

      drawer: const DrawerWidget(),
      bottomNavigationBar: CartBottomNavbar(),
    );
  }
}