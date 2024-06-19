// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Gacoans/widget/AppBarWidget.dart';
import 'package:Gacoans/widget/CategoriesWidget.dart';
import 'package:Gacoans/widget/DrawerWidget.dart';
import 'package:Gacoans/widget/MisiWidget.dart';
import 'package:Gacoans/widget/PopularWidget.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        children: [
          const AppBarWidget(),

          //search
          Padding(padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                )
              ]),
              child: Padding(padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(children: [
                const Icon(CupertinoIcons.search,
                color: Colors.pink,
                ),
                Container(
                  height: 50,
                  width: 300,
                  child: Padding(padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Cari disini",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const Icon(Icons.filter_list),
                ],
                ),
                ),
          ),
          ),
          
          //Categori
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            ),

            //categori
            CategoriesWidget(),

            //popular items 
            const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Popular Items",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            ),

            //popular items
            PopularWidget(),

            //Misi
             const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "New Mission",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            ),

             const MisiWidget(),
        ],
      ),
      drawer: const DrawerWidget(),
      floatingActionButton: Container(
        decoration: 
        BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ]),
        child: FloatingActionButton(
          onPressed: (){
            Navigator.pushNamed(context, '/cartPage');
          },
          child: const Icon(
            CupertinoIcons.cart,
            size: 28,
            color: Colors.blue,
          ),
          backgroundColor: Colors.white,
          ),
      ),
    );
  }
}