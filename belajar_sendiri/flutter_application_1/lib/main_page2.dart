import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/domain/class/product.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';

class MainPage2 extends StatefulWidget {
  const MainPage2({super.key});

  @override
  State<MainPage2> createState() => _MainPage2State();
}

class _MainPage2State extends State<MainPage2> {
  int number = 0;

  // Nambah angka
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Text(
  //             '$number',
  //             style: const TextStyle(
  //               fontFamily: 'NotoSansJp',
  //               fontSize: 20,
  //             ),
  //           ),
  //           const SizedBox(
  //             height: 20,
  //           ),
  //           ElevatedButton(
  //               onPressed: () {
  //                 setState(() {
  //                   number += 1;
  //                 });
  //               },
  //               child: const Text('+')),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  ////// Icon Widget

  // TextEditingController tec = TextEditingController(text: '');
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Text Field Widged'),
  //       backgroundColor: Colors.blue,
  //     ),
  //     body: Padding(
  //       padding: const EdgeInsets.all(20),
  //       child: Column(
  //         children: [
  //           TextField(
  //             controller: tec,
  //             // obscureText: true,
  //             // obscuringCharacter: '*',
  //             style: const TextStyle(
  //               fontWeight: FontWeight.bold,
  //             ),
  //             textAlign: TextAlign.center,
  //             inputFormatters: [
  //               TextInputFormatter.withFunction(
  //                   (a, b) => TextEditingValue(text: b.text.toLowerCase()))
  //             ],
  //             decoration: InputDecoration(
  //               icon: Icon(
  //                 MdiIcons.pencil,
  //                 color: Colors.blue,
  //                 size: 20,
  //               ),
  //               prefixText: 'Ini Prefix: ',
  //               prefixStyle: const TextStyle(
  //                   color: Colors.black, fontWeight: FontWeight.bold),
  //               suffix: Container(
  //                 padding: const EdgeInsets.all(2),
  //                 child: const Text('ini suffix Text'),
  //               ),
  //               suffixIcon: Icon(
  //                 MdiIcons.rocket,
  //                 color: Colors.green,
  //               ),
  //               hintText: 'Please type any text here',
  //               hintStyle: TextStyle(
  //                 color: Colors.blue.shade300,
  //                 fontWeight: FontWeight.normal,
  //               ),
  //               hintMaxLines: 2,
  //               label: const Text('Input text'),
  //               floatingLabelAlignment: FloatingLabelAlignment.center,
  //               floatingLabelBehavior: FloatingLabelBehavior.auto,
  //               helperText: 'This is helper text',
  //               counterText: '${tec.text.length}',
  //               errorText: 'This is error text',
  //               enabledBorder: OutlineInputBorder(
  //                 borderSide:
  //                     BorderSide(color: Colors.blue.shade300, width: 20),
  //                 borderRadius: const BorderRadius.all(
  //                   Radius.circular(20),
  //                 ),
  //               ),
  //             ),

  //             onChanged: (value) => setState(() {}),
  //           ),
  //           const SizedBox(
  //             height: 30,
  //           ),
  //           const TextField(),
  //           Text(
  //             tec.text,
  //             style: const TextStyle(
  //               fontSize: 20,
  //             ),
  //           ),
  //           ElevatedButton(
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //             child: const Text('Go back'),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Single Chill Scroll View | Build | List View => render apa yang user liat saja
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //       child: ListView(
  //         children: makeContainers(),
  //       ),
  //     ),
  //   );
  // }

  // List<Widget> makeContainers() => List.generate(
  //       30,
  //   (e) => Builder(builder: (context) {
  //     log(e.toString());
  //     return UnconstrainedBox(
  //       child: Container(
  //         width: 50,
  //         height: 50,
  //         margin: const EdgeInsets.all(20),
  //         color: Colors.blue,
  //         child: Center(
  //           child: Text(
  //             '$e',
  //             style: const TextStyle(
  //               fontSize: 20,
  //               fontWeight: FontWeight.bold,
  //             ),
  //           ),
  //         ),
  //       ),
  //     );
  //   }),
  // );

  // PAGE VIEW
  // PageController pageController = PageController(initialPage: 0);
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       body: Stack(
  //     children: [
  //       PageView.builder(
  //         controller: pageController,
  //         itemCount: 3,
  //         itemBuilder: (BuildContext context, int index) => Center(
  //           child: Text('Page ${index + 1}'),
  //         ),
  //       ),
  //       Align(
  //         alignment: Alignment.bottomCenter,
  //         child: Container(
  //           height: 100,
  //           width: double.infinity,
  //           color: Colors.green.shade50,
  //           child: Center(
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //               children: [
  //                 ElevatedButton(
  //                     onPressed: () {
  //                       if ((pageController.page ?? 0) >= 1) {
  //                         pageController.previousPage(
  //                             duration: const Duration(milliseconds: 500),
  //                             curve: Curves.easeInOut);
  //                       }
  //                     },
  //                     child: const Text('Prev')),
  //                 ElevatedButton(
  //                     onPressed: () {
  //                       pageController.jumpToPage(0);
  //                     },
  //                     child: const Text('Home')),
  //                 ElevatedButton(
  //                     onPressed: () {
  //                       if ((pageController.page ?? 0) <= 1) {
  //                         pageController.nextPage(
  //                             duration: const Duration(milliseconds: 500),
  //                             curve: Curves.easeInOut);
  //                       }
  //                     },
  //                     child: const Text('Next'))
  //               ],
  //             ),
  //           ),
  //         ),
  //       )
  //     ],
  //   ));
  // }

  // DROPDOWN BUTTON
  // List<Product> products = [
  //   Product(name: 'Fried Chicken'),
  //   Product(name: 'Fried Tofu'),
  //   Product(name: 'Fried Beef'),
  //   Product(name: 'Fried Fries'),
  //   Product(name: 'Fried Porg')
  // ];

  // Product? selectedProduct;
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //       child: Padding(
  //         padding: const EdgeInsets.all(30),
  //         child: DropdownButton<Product>(
  //           items: products
  //               .map(
  //                 (e) => DropdownMenuItem<Product>(
  //                   value: e,
  //                   child: Text(e.name),
  //                 ),
  //               )
  //               .toList(),
  //           value: selectedProduct,
  //           onChanged: (Product? value) {
  //             setState(() {
  //               selectedProduct = value;
  //             });
  //           },
  //           isExpanded: true,
  //           hint: const Text('Please select product'),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Gesture Detector
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => log('tap!'),
          onTapDown: (e) =>
              log('Top Down! ${e.globalPosition} ${e.localPosition} ${e.kind}'),
          onTapCancel: () => log('cancel!'),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.red, Colors.blue],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
