import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BuyProduct(),
    );
  }
}

class BuyProduct extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue,

      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/c1.jpg'),
            )
        ),

        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                color: Colors.white60,
              ),
              SizedBox(height: 40,),
              Container(
                height: 300,
                color: Colors.white60,
              ),
              SizedBox(height: 40,),
              Container(
                height: 300,
                color: Colors.white60,
              ),
              SizedBox(height: 40,),
              Container(
                height: 300,
                color: Colors.white60,
              ),
              SizedBox(height: 40,),
              Container(
                height: 300,
                color: Colors.white60,
              ),
              SizedBox(height: 40,),Container(
                height: 300,
                color: Colors.white60,
              ),
              SizedBox(height: 40,),
              Container(
                height: 300,
                color: Colors.white60,
              ),
              SizedBox(height: 40,),
              Container(
                height: 300,
                color: Colors.white60,
              ),
              SizedBox(height: 40,),Container(
                height: 300,
                color: Colors.white60,
              ),
              SizedBox(height: 40,),
            ],
          ),
        ),

      ),
    );
  }

}
// class BuyProduct extends StatefulWidget {
//   @override
//   _BuyProductState createState() => _BuyProductState();
// }
//
// class _BuyProductState extends State<BuyProduct> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//
//           },
//         ),
//         actions: [
//           Stack(
//             children: [
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.shopping_cart),
//               ),
//             ],
//           ),
//         ],
//       ),
//       body:  SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             Container(
//               width: 350,
//               height: 450,
//               decoration: BoxDecoration(
//                 image: DecorationImage(image:  AssetImage("assets/images/dress3.jpeg"),
//                     fit: BoxFit.cover
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(right: 90.0,top: 10.0),
//               child: Text("Katie Ruched Dress - Rose\n\$12.99",
//                 style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold),),
//             ),
//             SizedBox(height: 10),
//             Column(
//               children: [
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left:10.0),
//                       child: Text('Color',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
//                     ),
//                     SizedBox(width: 16),
//                     Container(
//                       width: 30,
//                       height: 30,
//                       decoration: BoxDecoration(
//                         color: Colors.pinkAccent,
//                         borderRadius: BorderRadius.circular(4),
//                       ),
//                       child: Icon(
//                         Icons.check,
//                         color: Colors.white,
//                         size: 16,
//                       ),
//                     ),
//                     SizedBox(width: 16),
//                     Container(
//                       width: 30,
//                       height: 30,
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(4),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 5),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10.0),
//                       child: Text('Size',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
//                     ),
//                     SizedBox(width: 16),
//                     ElevatedButton(
//                       style:  ElevatedButton.styleFrom(
//                           foregroundColor: Colors.black,
//                           backgroundColor: Colors.white,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10)
//                           )
//                       ),
//                       onPressed: () {},
//                       child: Text('XS',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
//                     ),
//                     SizedBox(width: 16),
//                     ElevatedButton(
//                       style:  ElevatedButton.styleFrom(
//                           foregroundColor: Colors.black,
//                           backgroundColor: Colors.white,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10)
//                           )
//                       ),
//                       onPressed: () {},
//                       child: Text('S',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
//                     ),
//                     SizedBox(width: 16),
//                     ElevatedButton(
//                       style:  ElevatedButton.styleFrom(
//                           side: BorderSide(color: Colors.black,width: 2),
//                           foregroundColor: Colors.black,
//                           backgroundColor: Colors.white,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10)
//                           )
//                       ),
//                       onPressed: () {},
//                       child: Text('M',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
//                     ),
//                     SizedBox(width: 16),
//                     ElevatedButton(
//                       style:  ElevatedButton.styleFrom(
//                           foregroundColor: Colors.black,
//                           backgroundColor: Colors.white,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10)
//                           )
//                       ),
//                       onPressed: () {},
//                       child: Text('L',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomAppBar(
//           child: Row(
//               children: [
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       fixedSize: Size(220, 53),
//                       foregroundColor: Colors.white,
//                       backgroundColor: Colors.black,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10)
//                       )
//                   ),
//                   onPressed: () {
//                     showDialog(context: context, builder: (BuildContext context) {
//                       return AlertDialog(
//                           title: Text('Your item added to cart'),
//                           actions: [
//                             TextButton(
//                               child: Text(
//                                 'View cart', style: TextStyle(color: Colors.black),),
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                               },
//                             ),
//                           ]
//                       );
//                     }
//                     );
//                   },
//                   child: Text("ADD TO CART",style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 17),),
//                 ),
//                 Container(
//                   height: 53,
//                   width: 130,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     border: Border.all(color: Colors.black),
//                   ),
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Icon(Icons.apple,size: 30,),
//                       ),
//                       Text("PAY",style : TextStyle(fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black)),
//                     ],
//                   ),
//                 )
//               ]
//           )
//       ),
//     );
//   }
// }