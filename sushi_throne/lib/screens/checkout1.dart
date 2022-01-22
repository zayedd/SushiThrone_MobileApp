// import 'package:flutter/material.dart';
// //import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// class RoundedContainer extends StatelessWidget {
//   const RoundedContainer({
//     Key? key,
//     required this.child,
//     this.height,
//     this.width,
//     this.color = Colors.white,
//     this.padding = const EdgeInsets.all(16.0),
//     this.margin,
//     this.borderRadius,
//     this.alignment,
//     this.elevation,
//   }) : super(key: key);
//   final Widget child;
//   final double? width;
//   final double? height;
//   final Color color;
//   final EdgeInsets padding;
//   final EdgeInsets? margin;
//   final BorderRadius? borderRadius;
//   final AlignmentGeometry? alignment;
//   final double? elevation;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: margin ?? const EdgeInsets.all(0),
//       color: color,
//       elevation: elevation ?? 0,
//       clipBehavior: Clip.antiAlias,
//       shape: RoundedRectangleBorder(
//         borderRadius: borderRadius ?? BorderRadius.circular(20.0),
//       ),
//       child: Container(
//         alignment: alignment,
//         height: height,
//         width: width,
//         padding: padding,
//         child: child,
//       ),
//     );
//   }
// }
// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   static const String _title = 'Sushi throne';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title),
//         backgroundColor: Colors.orange,),
//         body: const Center(
//           child: MyStatefulWidget(),
//         ),
//       ),
//     );
//   }
// }


// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {

//    @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         iconTheme: IconThemeData(
//           color: Colors.black,
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Text(
//               "Choose your Payment method",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 24.0,
//               ),
//             ),
            
//             const SizedBox(height: 30.0),
//             RoundedContainer(
//               margin: const EdgeInsets.all(8.0),
//               padding: const EdgeInsets.all(8.0),
//               child: ListTile(
//                 leading: Icon(
//                 //  FontAwesomeIcons.paypal,
//                   color: Colors.orange,
//                 ),
//                 title: Text("Paypal"),
//                 trailing: Icon(Icons.arrow_forward_ios),
//               ),
//             ),
//             RoundedContainer(
//               margin: const EdgeInsets.all(8.0),
//               padding: const EdgeInsets.all(8.0),
//               child: ListTile(
//                 leading: Icon(
//                   //FontAwesomeIcons.creditCard,
//                   color: Colors.orange,
//                 ),
//                 title: Text("Credit card"),
//                 trailing: Icon(Icons.arrow_forward_ios),
//               ),
//             ),
//             RoundedContainer(
//               margin: const EdgeInsets.all(8.0),
//               padding: const EdgeInsets.all(8.0),
//               child: ListTile(
//                 leading: Icon(
//                   FontAwesomeIcons.doorClosed,
//                   color: Colors.orange,
//                 ),
//                 title: Text("Cash on delivery"),
//                 trailing: Icon(Icons.arrow_forward_ios),
//               ),
//             ),
//             const SizedBox(height: 20.0),
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.symmetric(
//                 vertical: 16.0,
//                 horizontal: 32.0,
//               ),
//               child: RaisedButton(
//                 elevation: 0,
//                 padding: const EdgeInsets.all(24.0),
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0)),
//                 child: Text("Continue"),
//                 color: Colors.orange,
//                 textColor: Colors.white,
//                 onPressed: () {},
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }