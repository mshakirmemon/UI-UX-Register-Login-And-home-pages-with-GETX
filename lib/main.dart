import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mnm_uk/view/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, home: SplashWithText());
  }
}
// import 'package:flutter/material.dart';

// import 'package:get/get.dart';

// import 'module/tab_controller.dart';

// void main() {
//   runApp(GetMaterialApp(
//       debugShowCheckedModeBanner: false, home: MyTabbedWidget()));
// }

// class MyTabbedWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final MyTabController _tabx = Get.put(MyTabController());

//     // ↑ init tab controller

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('GetX TabView'),
//         bottom: TabBar(
//           controller: _tabx.controller,
//           tabs: _tabx.myTabs,
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabx.controller,
//         children: _tabx.myTabs.map((Tab tab) {
//           final String label = tab.text!.toLowerCase();

//           return Center(
//             child: Text(
//               'This is the $label tab',
//               style: const TextStyle(fontSize: 36),
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
