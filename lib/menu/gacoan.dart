// import 'package:clippy_flutter/arc.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:gacoan/widget/AppBarWidget.dart';
// import 'package:gacoan/widget/DrawerWidget.dart';
// import 'package:gacoan/widget/ItemBottomNavBar.dart';

// class GacoanPage extends StatelessWidget {
//   const GacoanPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(top: 5),
//         child: ListView(
//           children: [
//             const AppBarWidget(),
//             Padding(
//               padding: const EdgeInsets.all(16),
//               child: Image.asset(
//                 'miegacoan.png',
//                 height: 300,
//                 // width: double.infinity,
//               ),
//             ),
//             Arc(
//               edge: Edge.TOP,
//               arcType: ArcType.CONVEY,
//               height: 30,
//               child: Container(
//                 width: double.infinity,
//                 color: Colors.white,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 60, bottom: 10),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             RatingBar.builder(
//                               initialRating: 4,
//                               minRating: 1,
//                               direction: Axis.horizontal,
//                               itemCount: 5,
//                               itemSize: 18,
//                               itemPadding:
//                                   const EdgeInsets.symmetric(horizontal: 4),
//                               itemBuilder: (context, _) => const Icon(
//                                 Icons.star,
//                                 color: Colors.red,
//                               ),
//                               onRatingUpdate: (rating) {},
//                             ),
//                             const Text(
//                               "Rp.13.387",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 10,
//                           bottom: 20,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Text(
//                               "Mie Gacoan",
//                               style: TextStyle(
//                                 fontSize: 28,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Container(
//                               width: 90,
//                               padding: const EdgeInsets.all(5),
//                               decoration: BoxDecoration(
//                                 color: Colors.red,
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: const Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Icon(
//                                     CupertinoIcons.minus,
//                                     color: Colors.white,
//                                     size: 20,
//                                   ),
//                                   Text(
//                                     '1',
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   Icon(
//                                     CupertinoIcons.plus,
//                                     color: Colors.white,
//                                     size: 20,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const Padding(
//                         padding: EdgeInsets.symmetric(
//                           vertical: 10,
//                         ),
//                         child: Text(
//                           "Untuk yang suka manis harus cobain mie yang satu ini. Mie dengan rasa manis atau pedas manis buat kamu yang ingin mencoba sensasi pedas manis yang uhhhh ahhhhh....",
//                           style: TextStyle(fontSize: 16),
//                           textAlign: TextAlign.justify,
//                         ),
//                       ),
//                       const Padding(
//                         padding: EdgeInsets.symmetric(
//                           vertical: 15,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "Delivery Time",
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                   fontStyle: FontStyle.italic),
//                             ),
//                             Row(
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsets.symmetric(horizontal: 5),
//                                   child: Icon(
//                                     CupertinoIcons.clock,
//                                     color: Colors.red,
//                                   ),
//                                 ),
//                                 Text(
//                                   "30 Minuite",
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                   ),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ), 
//       ),

//       drawer: const DrawerWidget(),
//       bottomNavigationBar: const ItemBottomNavBar(),
      
//     );
//   }
// }
