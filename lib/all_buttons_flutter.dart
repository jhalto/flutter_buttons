

import 'package:flutter/material.dart';

class FlutterButtonsPractice extends StatelessWidget {
  const FlutterButtonsPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

           children: [

             TextButton(
                 style: TextButton.styleFrom(


                   textStyle: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                     fontStyle: FontStyle.italic,


                   )
                 ),
                 onPressed: (){}, child: Container(
               decoration: BoxDecoration(

                 color: Colors.white,
                 borderRadius: BorderRadius.circular(40)
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     decoration: BoxDecoration(

                       color: Colors.green,
                       borderRadius: BorderRadius.only(
                         topRight: Radius.circular(20),
                         bottomLeft: Radius.circular(5),
                       )

                     ),
                       width: 75,
                       child: Icon(Icons.text_fields)),
                   Text("Text button",style: TextStyle(
                     color: Colors.yellow
                   )),
                 ],
               ),
             )),
             ElevatedButton(
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.yellow,
                 foregroundColor: Colors.blue,
               ),
                 onLongPress: (){
                   print("button pressed");
                 },
                 onPressed: (){}, child: Container(
               width: 150,
                   child: Row(
               children: [
                   Icon(Icons.logout),
                   SizedBox(width: 20,),
                   Text("log Elevated")
               ],
             ),
                 ),


             ),
             OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      34,
                    )
                  )

                ),
                 onPressed: (){}, child: Container(
               width: 90,
               child: Row(
                 children: [
                   Icon(Icons.bar_chart),
                   SizedBox(width: 10,),
                   Text('outline'),
                 ],
               ),
             )),
               MaterialButton(
                 shape: RoundedRectangleBorder(

                   borderRadius: BorderRadius.circular(25)
                 ),
                 color: Colors.red,
                 onPressed: (){},child: Container(
                 width: 100,
                 child: Row(
                   children: [
                     Icon(Icons.smart_button),
                     SizedBox(width: 10,),
                     Text("Material")
                   ],
                 ),
               ),),
             InkWell(
               onTap: (){
                 print('pressed');
               },
               highlightColor: Colors.blue,

               child: Container(
                 width: 150,
                 height: 50,
                 decoration: BoxDecoration(
                   color: Colors.green,
                   borderRadius: BorderRadius.circular(15),

                 ),
                 child: Row(
                   children: [
                     Container(
                       child: Icon(Icons.adb),
                       width: 80,
                       height: 50,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.only(
                           bottomRight: Radius.circular(90),
                         ),
                       ),
                     ),
                     Text("Custom")

                   ],
                 ),
               ),
             )

           ],
      ),
    );
  }
}
