// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/instance_manager.dart';
// import 'package:http/http.dart' as http;
// import 'data_model.dart';
// import 'show_data_controller.dart';
//
// class HomePage extends StatelessWidget {
//   final  ProductController subjects = Get.put(ProductController());
//
//
//   Future<ExamsubjectModel> fechData() async {
//     print("tesgtdfshggfhhdf");
//     ExamsubjectModel bm;
//     String url = "http://161.35.121.120:4000/allSubjects";
//     http.Response response = await http.get(Uri.parse(url),);
//     Map<String, dynamic> jsonresponse = jsonDecode(response.body);
//     bm = ExamsubjectModel.fromJson(jsonresponse);
//     print("tesgtdfshggfhhdf" + jsonresponse.toString());
//     return bm;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         leading: Icon(
//           Icons.arrow_back_ios,
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(
//               Icons.shopping_cart,
//             ),
//             onPressed: () {},
//           )
//         ],
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     'ShopX',
//                     style: TextStyle(
//                         fontFamily: 'avenir',
//                         fontSize: 32,
//                         fontWeight: FontWeight.w900),
//                   ),
//                 ),
//                 IconButton(
//                     icon: Icon(Icons.view_list_rounded), onPressed: () {}),
//                 IconButton(icon: Icon(Icons.grid_view), onPressed: () {}),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Obx(() {
//               if (subjects.isLoading.value)
//                 return Center(child: Text("Loading"));
//               else {
//                 return Container(child:Text("${subjects.subjects!.examdetail[0].name}"));
//               }
//             }),
//           )
//         ],
//       ),
//     );
//   }
// }