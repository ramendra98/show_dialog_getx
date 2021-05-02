import 'package:flutter/material.dart';
import 'package:get/get.dart';
 class MyHomePage extends StatefulWidget {
   @override
   _MyHomePageState createState() => _MyHomePageState();
 }
 
 class _MyHomePageState extends State<MyHomePage> {
   @override
   Widget build(BuildContext context) {
     return GetMaterialApp(
       home: Scaffold(appBar: AppBar(title: Text('Dialog Box'),),
       
       body: Center(child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           RaisedButton(
             
             onPressed: (){

               Get.defaultDialog(
                 title: 'Hello Dear',
                 titleStyle: TextStyle(fontSize: 25),

               content: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(children: [

                   CircularProgressIndicator(),
                   SizedBox(width: 20,),
                   Expanded(child: Text('Data Loading..'))
                 ],),
               ),
               textCancel: 'Cancel',
               cancelTextColor: Colors.redAccent,
               textConfirm: 'Confirm',
               confirmTextColor: Colors.yellowAccent,
               buttonColor: Colors.green,

               cancel: Text('Cancles',
               
               style: TextStyle(color: Colors.green),)

                 //middleText: 'Surya Prakash Yadav'
               );
             },
             child: Text('Show Dialog'),
           ),



       ],),),),
       
       
     );
   }
 }