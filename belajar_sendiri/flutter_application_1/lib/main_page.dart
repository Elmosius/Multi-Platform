import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  //// COLUMN & ROW
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: const Text('Aplikasi Pertamaku')),
  //     body: const Column(
  //       children: [
  //         Text('Hello '),
  //         Row(
  //           children: [
  //             Text('Hello '),
  //             Text('Hello '),
  //             Text('Hello '),
  //           ],
  //         ),
  //         Text('Hello '),
  //       ],
  //     ),
  //   );
  // }

  ////// CONTAINER & MARGIN & PADDING
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         title: const Text('Aplikasi Pertamaku'),
  //         backgroundColor: Colors.blue,
  //       ),
  //       body: Column(
  //         children: [
  //           Row(
  //             children: [
  //               Container(
  //                 margin:
  //                     const EdgeInsets.only(left: 10, right: 20, bottom: 20),
  //                 padding: const EdgeInsets.all(10),
  //                 width: 50,
  //                 height: 50,
  //                 color: Colors.greenAccent,
  //                 child: Container(
  //                   width: 50,
  //                   height: 50,
  //                   color: Colors.orange,
  //                 ),
  //               ),
  //               Container(
  //                 width: 50,
  //                 height: 50,
  //                 color: Colors.red,
  //               ),
  //             ],
  //           ),
  //           Row(
  //             children: [
  //               Container(
  //                 width: 50,
  //                 height: 50,
  //                 color: Colors.yellow,
  //               ),
  //               Container(
  //                 width: 50,
  //                 height: 50,
  //                 color: Colors.blue,
  //               ),
  //             ],
  //           )
  //         ],
  //       ));
  // }

  ////// CONTAINER | BOX DECORATION
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(title: const Text('Aplikasi Pertamaku')),
  //       body: Center(
  //         child: Container(
  //           width: 100,
  //           height: 100,
  //           decoration: BoxDecoration(
  //             color: Colors.red,
  //             border: Border.all(color: Colors.black, width: 1),
  //             borderRadius: const BorderRadius.only(
  //               topLeft: Radius.circular(20),
  //               topRight: Radius.circular(20),
  //               bottomLeft: Radius.circular(20),
  //               bottomRight: Radius.circular(20),
  //             ),
  //             gradient:
  //                 const LinearGradient(colors: [Colors.red, Colors.yellow]),
  //             image: const DecorationImage(
  //               image: NetworkImage(
  //                   'https://dbkpop.com/wp-content/uploads/2023/04/newjeans_omg_hanni_3.jpg'),
  //               fit: BoxFit.cover,
  //             ),
  //             boxShadow: const [
  //               BoxShadow(
  //                 color: Colors.black,
  //                 blurRadius: 6,
  //                 spreadRadius: 1,
  //                 offset: Offset(2, 2),
  //               ),
  //             ],
  //             // shape: BoxShape.circle,
  //           ),
  //         ),
  //       ));
  // }

  ///// SIZEDBOX => PENGGANTI UNTUK CONTAINER UNTUK HEMAT MEMORI
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(title: const Text('Aplikasi Pertamaku')),
  //       body: const Center(
  //         child: Column(
  //           children: [
  //             SizedBox(
  //               width: 200,
  //               // height: 20,
  //               child: Text('Hello nama saya Elmosius Suli'),
  //             ),
  //             SizedBox(
  //               height: 200,
  //             ),
  //             Text('Selamat Datang!'),
  //           ],
  //         ),
  //       ));
  // }

  ////// TEXT WIDGET
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(title: const Text('Aplikasi Pertamaku')),
  //     body: const Center(
  //       child: SizedBox(
  //         width: 200,
  //         child: Text(
  //           'Hallo nama saya Elmo! salam kenal :D',
  //           textAlign: TextAlign.justify,
  //           maxLines: 1,
  //           overflow: TextOverflow.ellipsis,
  //           style: TextStyle(
  //             // backgroundColor: Colors.red,
  //             color: Colors.black,
  //             fontSize: 20,
  //             fontWeight: FontWeight.bold,
  //             fontStyle: FontStyle.italic,
  //             shadows: [
  //               Shadow(
  //                 blurRadius: 0,
  //                 color: Colors.black,
  //                 offset: Offset(5, 5),
  //               ),
  //             ],
  //             // letterSpacing: 5,
  //             // wordSpacing: 4,
  //             decoration: TextDecoration.underline,
  //             decorationThickness: 3,
  //             decorationColor: Colors.red,
  //             decorationStyle: TextDecorationStyle.dashed,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  ////// MENGGANTI JENIS FONT
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aplikasi Pertamaku')),
      body: const Center(
        child: SizedBox(
          width: 200,
          child: Text(
            'Hallo nama saya Elmo! salam kenal :D',
            // style: TextStyle(
            //   fontFamily: 'NotoSansJP',
            //   fontWeight: FontWeight.bold,
            // ),
            // style: GoogleFonts.aclonica(),
          ),
        ),
      ),
    );
  }
}
