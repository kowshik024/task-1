import 'package:firstproject/login.dart';
import 'package:firstproject/otp.dart';
import 'package:flutter/material.dart';



class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 190),
          child: Text("Welcome to",style: TextStyle(fontSize: 30,color: Colors.green),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 170),
          child: Text("Chitsoft",style: TextStyle(fontSize: 30,color: Colors.green,fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 30,),

        Image(image: NetworkImage("https://static.toiimg.com/photo/89045175.cms")),
        SizedBox(height: 58,),


        GestureDetector(
          onDoubleTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
          },
          child: Container(
            height: 50,
            width: 250,
            child: Center(child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(20))

            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("(Or)"),
        ),
        Container(
          height: 50,
          width: 250,
          child: Center(child: Text("Enquiry",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),)),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all()

          ),
        )

      ],),
    );
  }
}