import 'package:flutter/material.dart';
import 'dart:async';
void main(){
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplachScreen(),
    );
  }
}

class SplachScreen extends StatefulWidget {
  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {

  @override
  void initState() {

    super.initState();
//    displaySplash();
  }

//  displaySplash(){
//
//    Timer(Duration(seconds: 5), () async{
//
//
//
//        Route route = MaterialPageRoute(builder: (_) => AuthenticScreen());
//        Navigator.pushReplacement(context, route);
//
//
//    });
//
//  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
       fit: StackFit.expand,
       children: [

         Container(
            
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage('images/img2.jpg',),  //Background Image
               fit: BoxFit.fill,
               colorFilter:
               ColorFilter.mode(Colors.black.withOpacity(0.3),
                   BlendMode.dstATop),
             ),
             gradient: LinearGradient(
               colors: [Colors.red[900], Colors.orange],

             )

           ),

         ),
         Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [

             Expanded(
               flex: 2,
               child: Container(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     CircleAvatar(
                       backgroundColor: Colors.white,

                       radius: 80.0,
                       child: Image.asset('images/logo.png')
                     ),
                     Padding(
                       padding: EdgeInsets.only(top: 10.0),

                     ),
                     Text("Welcome",style: TextStyle(color: Colors.white,fontSize: 35.0,fontWeight: FontWeight.bold ,fontFamily:'gfont'),)
                   ],
                 ),
               ),

             ),
             Expanded(
               flex: 1,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   CircularProgressIndicator(backgroundColor: Colors.yellow,),
                   Padding(
                     padding: EdgeInsets.only(top: 20.0),
                   ),
                   Padding(
                     padding: EdgeInsets.only(right: 85.0),
                     child:Text("Online Glossary \n         For Everyone",style: TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),) ,
                   )

                 ],
               ),
             )
           ],
         )
       ],
     ),
    );
  }
}
