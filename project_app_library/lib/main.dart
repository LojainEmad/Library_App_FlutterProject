import 'package:flutter/material.dart';
import 'src/app_root.dart';

void main(){

  runApp(AppRoot());
}

// class BookDetailsApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: BookScreen(),
//     );
//   }
// }

// class BookScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor:Colors.lightBlueAccent,
//         elevation: 0.5,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios, color: Colors.black),
//           onPressed: () {},
//         ),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.lightBlueAccent, Colors.lightBlue.shade50],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Centered Book Image and Action Icons
//               Center(
//                 child: Column(
//                   children: [
//                     // Book Image Container
//                     Container(
//                       width: 220,
//                       padding: EdgeInsets.all(10), // Padding for the background container
//                       decoration: BoxDecoration(
//                         color: Colors.blueGrey.shade100, // Background color for the outer container
//                         borderRadius: BorderRadius.circular(12), // Rounded corners
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black26,
//                             blurRadius: 8.0,
//                             offset: Offset(0, 4), // Shadow position
//                           ),
//                         ],
//                       ),
//                       child: Container(
//                         height: 250, // Increased height
//                         width: 190, // Increased width
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(12),
//                           color: Colors.grey.shade200, // Background color added
//                           image: DecorationImage(
//                             image: AssetImage('assets/91EU71XRzrL._AC_UF1000,1000_QL80_.jpg'),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 5),
//
//                     // Row for Action Icons
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         IconButton(
//                           icon: Icon(Icons.library_add, color: Colors.white, size: 30),
//                           onPressed: () {
//                             // Borrow action
//                           },
//                         ),
//                         IconButton(
//                           icon: Icon(Icons.favorite_border, color: Colors.white, size: 30),
//                           onPressed: () {
//                             // Add to favorites action
//                           },
//                         ),
//                       ],
//                     ),
//                     SizedBox(height:5),
//
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor:  Colors.blue,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                       ),
//                       child: Center(
//                         child: Padding(
//                           padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(Icons.menu_book, color: Colors.white),
//                               SizedBox(width: 5),
//                               Text(
//                                 "Read Book",
//                                 style: TextStyle(color: Colors.white, fontSize: 20),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 5),
//                   ],
//                 ),
//               ),
//
//               // Book Title and Stars in Row
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Rethink',
//                     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(width: 10), // Add some space between title and stars
//                   Row(
//                     children: [
//                       Icon(Icons.star, color: Colors.orange, size: 35),
//                       Icon(Icons.star, color: Colors.orange, size: 35),
//                       Icon(Icons.star, color: Colors.orange, size: 35),
//                       Icon(Icons.star, color: Colors.orange, size: 35),
//                       Icon(Icons.star_border, color: Colors.orange, size: 35),
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(height: 5),
//
//               // Author Name
//               Text(
//                 'by Steven Poole',
//                 style: TextStyle(fontSize: 18, color: Colors.black),
//               ),
//               SizedBox(height: 2),
//
//               // Book Description
//               Text(
//                 'The story of how old ideas that were mocked or ignored for centuries are now storming back to the cutting edge of science and technology, informing the way we lead our lives.',
//                 style: TextStyle(fontSize: 16, height: 1.5),
//               ),
//               SizedBox(height: 2),
//
//               // Book Information (Release, Language, Page Number)
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   _buildInfoColumn(Icons.calendar_today, 'Release', '11 / 6 / 2024'),
//                   _buildInfoColumn(Icons.language, 'Language', 'AR - EN'),
//                   _buildInfoColumn(Icons.pages, 'Page Num', '450'),
//                 ],
//               ),
//               SizedBox(height: 2),
//
//               // Download Book Button
//               Center(
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   child: Text("Download Book", style: TextStyle(fontSize: 20, color: Colors.white)),
//                   style: ElevatedButton.styleFrom(
//                     padding: EdgeInsets.symmetric(horizontal: 110, vertical: 6),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     backgroundColor:Colors.blue,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   // Helper method to build the book information rows
//   Column _buildInfoColumn(IconData icon, String title, String value) {
//     return Column(
//       children: [
//         Icon(icon, color: Colors.black54),
//         SizedBox(height: 5),
//         Text(
//           title,
//           style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
//         ),
//         SizedBox(height: 5),
//         Text(
//           value,
//           style: TextStyle(color: Colors.black),
//         ),
//       ],
//     );
//   }
// }
