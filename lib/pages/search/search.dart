import 'package:flutter/material.dart';
import 'package:instagramclone/pages/search/widget/exploregrid.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.grey[300],
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
        ),
      ),
      body: exploregrid(),
    );
  }
}

// import 'package:flutter/material.dart';

// class Search extends StatelessWidget {
//   const Search({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//         title: ClipRRect(
//           borderRadius: BorderRadius.circular(8),
//           child: Container(
//               padding: EdgeInsets.all(8),
//               color: Colors.grey[500],
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.search,
//                     color: Colors.grey[300],
//                   ),
//                   Text(
//                     "Search",
//                     style: TextStyle(color: Colors.grey[300]),
//                   ),
//                 ],
//               )),
//         ),
//       ),
//     );
//   }
// }
